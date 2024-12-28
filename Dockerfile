FROM debian:latest AS build-env

RUN apt-get update
# Install necessary dependencies for running Flutter on web
# removed lib32stdc++6
RUN apt-get install -y libxi6 libgtk-3-0 libxrender1 libxtst6 libxslt1.1 curl git wget unzip libgconf-2-4 gdb libstdc++6 libglu1-mesa fonts-droid-fallback  python3 libstdc++6-i386-cross
RUN apt-get clean

ARG FLUTTER_SDK=/usr/local/flutter
ARG FLUTTER_VERSION=3.27.0

RUN git clone https://github.com/flutter/flutter.git $FLUTTER_SDK
RUN cd $FLUTTER_SDK && git fetch && git checkout $FLUTTER_VERSION

# Set Flutter path
ENV PATH="/usr/local/flutter/bin:/usr/local/flutter/bin/cache/dart-sdk/bin:${PATH}"

RUN flutter doctor -v
RUN flutter channel master
RUN flutter upgrade

# Enable web support
RUN flutter config --enable-web

RUN mkdir /app/
COPY . /app/
# Set the working directory inside the container
WORKDIR /app/

# Build the Flutter web application
RUN flutter build web --release 

FROM nginx:1.27.3-alpine
COPY --from=build-env /app/build/web /usr/share/nginx/html

# EXPOSE <EXPOSE PORT THAT YOU WANT>
EXPOSE 80
