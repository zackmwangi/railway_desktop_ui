import '../../../util/service_locator.dart';

@RoutePage()
class IntroPage extends StatelessWidget {
  IntroPage({super.key});
  //
  final introKey = GlobalKey<IntroductionScreenState>();
  //

  @override
  Widget build(BuildContext context) {
    //##########################################
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,

        //backgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            //

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: statusBarHeight,
                decoration: const BoxDecoration(color: appColorsBgLightColor),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //child: Text("footer"),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          //color: const Color.fromARGB(255, 187, 123, 123),
                          border: Border.all(
                        color: appColorsBgLightColor,
                      )),
                      child: Image.asset(
                        'assets/images/splash/splash_burgers.png',
                        height: 300,
                        width: 300,
                      ),
                    ),

                    //
                  ],
                ),
              ),
            ),

            Positioned(
              top: statusBarHeight,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //color: Colors.white,
                color: Colors.transparent,
                child: IntroductionScreen(
                  key: introKey,
                  allowImplicitScrolling: true,
                  infiniteAutoScroll: true,
                  autoScrollDuration: 10000,
                  skipOrBackFlex: 0,
                  nextFlex: 0,
                  globalBackgroundColor: Colors.white,
                  backStyle: ButtonStyle(
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        return Colors.white;
                      },
                    ),
                    textStyle: WidgetStateProperty.resolveWith(
                      (states) {
                        return const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        );
                      },
                    ),
                  ),
                  showBackButton: false,
                  nextStyle: ButtonStyle(
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        return Colors.white;
                      },
                    ),
                    textStyle: WidgetStateProperty.resolveWith(
                      (states) {
                        return const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        );
                      },
                    ),
                  ),
                  showNextButton: false,
                  done: const Text('Start >'),
                  showDoneButton: false,
                  doneStyle: ButtonStyle(
                    foregroundColor: WidgetStateProperty.resolveWith(
                      (states) {
                        return Colors.white;
                      },
                    ),
                    textStyle: WidgetStateProperty.resolveWith(
                      (states) {
                        return const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        );
                      },
                    ),
                  ),
                  onDone: () {
                    appRouter.navigate(const AuthSignUpRoute());
                  },
                  curve: Curves.fastLinearToSlowEaseIn,
                  controlsMargin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                  controlsPadding: kIsWeb
                      ? const EdgeInsets.all(12.0)
                      : const EdgeInsets.fromLTRB(0, 20.0, 8.0, 20.0),
                  dotsDecorator: const DotsDecorator(
                    //color: FoodyGooFadedLightColor150,
                    //activeColor: appColorsBgLightColor200,
                    /*
                    size: Size(48.0, 10.0),
                    activeSize: Size(60.0, 10.0),
                    */
                    color: appColorsBgLightColor100,
                    activeColor: appColorsBgLightColor,

                    size: introDotsSize,
                    activeSize: introDotsSizeActive,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    ),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(24.0)),
                    ),
                  ),
                  dotsContainerDecorator: const ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  pages: [
                    introSlide1Page(),
                    introSlide2Page(),
                    introSlide3Page(),
                  ],
                  globalFooter: IntroFooter(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //##########################################
  }
//
}
