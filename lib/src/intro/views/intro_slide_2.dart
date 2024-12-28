import '../../../util/service_locator.dart';

//
PageViewModel introSlide2Page() {
  return PageViewModel(
    image: Center(
      child: Column(
        children: [
          Container(
              //color: appColorsBgLightColor,
              child: const SizedBox(
            height: 60,
            width: double.infinity,
          )),
          Container(
            padding: EdgeInsets.all(4),
            width: double.infinity,
            height: 300,
            ////color: appColorsBgLightColor,
            //color: Colors.black26,
            color: Colors.white,
            child: SizedBox(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'assets/images/intro/intro_2.png',
                width: 320,
                //height: 320,
              ),
            ),
          )
        ],
      ),
    ),
    titleWidget: Container(
      height: 80,
      color: Colors.white,
      margin: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
              child: Text(
                introSlideHeading2,
                maxLines: 2,
                //style: titleTextStyleCustom,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  //color: appColorsBgLightColor,
                  //color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
    bodyWidget: Container(
      height: 80,
      color: Colors.white,
      margin: const EdgeInsets.fromLTRB(4, 4, 4, 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4, 0, 4, 0),
                child: Text(
                  introSlideDescription2,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    //color: appColorsBgLightColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ]),
    ),
    decoration: const PageDecoration(
      contentMargin: EdgeInsets.all(0),
      pageColor: Colors.white,
      titlePadding: EdgeInsets.only(top: 2, bottom: 0),
      bodyPadding: EdgeInsets.only(top: 0, bottom: 2),
      imagePadding: EdgeInsets.zero,
      safeArea: 20,
      fullScreen: true,
    ),
  );
}
