import '../../../../util/service_locator.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
      //
    });

    //Google user
    on<AuthLoginWithGoogleEvent>((event, emit) {
      //
      //
      //if login successful
      initializeDataFetches();
      //proceed to account
      //
    });

    //Facebook
    //AuthLoginWithFacebookEvent

    //Apple
    //AuthLoginWithAppleEvent

    //LinkedIn
    //AuthLoginWithLinkedinEvent

    //
    //
  }
}

void initializeDataFetches() {
  //
  // Are we online or offline ??

  bool isConnected = (connectivityBloc.state is ConnectivityConnected);
  //
  if (isConnected) {
    //
    //Fetch data for various sections
    //
    //
    //appSyncOnStart = true;
    //
  }

  //
}
