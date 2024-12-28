import '../../../util/service_locator.dart';

@RoutePage()
class LegalAgreeTermsPage extends StatelessWidget {
  const LegalAgreeTermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    //##########################################
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        //backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            //
            //Header
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: statusBarHeight,
                decoration: const BoxDecoration(color: appColorsBgLightColor),
              ),
            ),
            //
            //Body
            Positioned(
              top: statusBarHeight,
              left: 0,
              right: 0,
              child: Container(
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      //Heading
                      Row(
                        children: [
                          //Icon
                          Container(
                            margin: EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                                ////color: appColorsBgLightColor150,
                                ),
                            width: 60,
                            height: 60,
                          ),
                          //Header text
                          Container(
                            child: Column(
                              children: [
                                //
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  child: const Text(
                                    ' Terms of our services ',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      ////color: appColorsBgLightColor,
                                    ),
                                  ),
                                  //
                                ),
                                //
                                Container(
                                    //
                                    ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      //const Spacer(),
                      const SizedBox(
                        height: 16,
                      ),
                      //Actual content
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    termsHeading,
                                    maxLines: 2,
                                    //style: titleTextStyleCustom,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      ////color: appColorsBgLightColor,
                                      color: Colors.black,
                                      //color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Container(
                              //height: 200,
                              margin: const EdgeInsets.all(8),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  //
                                  Expanded(
                                    child: Text(
                                      termsExplainer,
                                      //maxLines: 2,
                                      //style: titleTextStyleCustom,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        ////color: appColorsBgLightColor,
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  //
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              child: Column(
                                children: [
                                  //
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.resolveWith(
                                              (states) {
                                                //return appColorsBgLightColor;
                                                return Colors.white;
                                              },
                                            ),
                                            side:
                                                WidgetStateProperty.resolveWith(
                                              (states) {
                                                return const BorderSide(
                                                  width: 1.5,
                                                  ////color: appColorsBgLightColor150,
                                                );
                                              },
                                            ),
                                            minimumSize:
                                                WidgetStateProperty.resolveWith(
                                                    (states) {
                                              return const Size(120, 48);
                                            }),
                                          ),
                                          child: const Text(
                                            ' Terms of use of the platform ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              //color: Colors.white,
                                              ////color: appColorsBgLightColor150,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onPressed: () {
                                            showMaterialModalBottomSheet(
                                              context: context,
                                              barrierColor: Colors.transparent,
                                              backgroundColor:
                                                  Colors.transparent,
                                              builder: (context) {
                                                return const LegalTermsPage();
                                              },
                                              enableDrag: false,
                                              isDismissible: false,
                                              duration: const Duration(
                                                  milliseconds: 300),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  //
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.resolveWith(
                                              (states) {
                                                //return appColorsBgLightColor;
                                                return Colors.white;
                                              },
                                            ),
                                            side:
                                                WidgetStateProperty.resolveWith(
                                              (states) {
                                                return const BorderSide(
                                                  width: 1.5,
                                                  ////color: appColorsBgLightColor150,
                                                );
                                              },
                                            ),
                                            minimumSize:
                                                WidgetStateProperty.resolveWith(
                                                    (states) {
                                              return const Size(120, 48);
                                            }),
                                          ),
                                          child: const Text(
                                            ' Privacy policy ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              //color: Colors.white,
                                              ////color: appColorsBgLightColor150,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onPressed: () {
                                            showMaterialModalBottomSheet(
                                              context: context,
                                              barrierColor: Colors.transparent,
                                              backgroundColor:
                                                  Colors.transparent,
                                              builder: (context) {
                                                return const LegalPrivacyPage();
                                              },
                                              enableDrag: false,
                                              isDismissible: false,
                                              duration: const Duration(
                                                  milliseconds: 300),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  /*
                                  const SizedBox(
                                    height: 16,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        OutlinedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.resolveWith(
                                              (states) {
                                                //return appColorsBgLightColor;
                                                return Colors.white;
                                              },
                                            ),
                                            side:
                                                WidgetStateProperty.resolveWith(
                                              (states) {
                                                return const BorderSide(
                                                  width: 1.5,
                                                  ////color: appColorsBgLightColor150,
                                                );
                                              },
                                            ),
                                            minimumSize:
                                                WidgetStateProperty.resolveWith(
                                                    (states) {
                                              return const Size(120, 48);
                                            }),
                                          ),
                                          child: const Text(
                                            ' Community interaction policy ',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              //color: Colors.white,
                                              ////color: appColorsBgLightColor150,
                                              color: Colors.black,
                                            ),
                                          ),
                                          onPressed: () {
                                            showMaterialModalBottomSheet(
                                              context: context,
                                              barrierColor: Colors.transparent,
                                              backgroundColor:
                                                  Colors.transparent,
                                              builder: (context) {
                                                return const LegalCommunityPolicyPage();
                                              },
                                              enableDrag: false,
                                              isDismissible: false,
                                              duration: const Duration(
                                                  milliseconds: 300),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                  */
                                ],
                              ),
                            ),
                            //
                          ],
                        ),
                      )

                      //Options
                    ],
                  )),
            ),
            //
            //Footer buttons
            //Agree/Decline
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: termsFooterHeight,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  //color: appColorsBgLightColor
                ),
                //Decline
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(
                          (states) {
                            return appColorsBgLightColor;
                            //return Colors.white;
                          },
                        ),
                        side: WidgetStateProperty.resolveWith(
                          (states) {
                            return const BorderSide(
                              width: 1.5,
                              color: appColorsBgLightColor150,
                            );
                          },
                        ),
                        minimumSize: WidgetStateProperty.resolveWith((states) {
                          return const Size(120, 48);
                        }),
                      ),
                      child: const Text(
                        ' Decline ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          //color: appColorsBgLightColor150,
                        ),
                      ),
                      onPressed: () {
                        //appRouter.navigate(const AuthSignUpRoute());
                        FlutterExitApp.exitApp(iosForceExit: true);
                      },
                    ),

                    SizedBox(
                      height: 50,
                      width: 50,
                    ),

                    //
                    OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.resolveWith(
                          (states) {
                            return appColorsBgLightColor;
                          },
                        ),
                        side: WidgetStateProperty.resolveWith(
                          (states) {
                            return const BorderSide(
                              width: 1.5,
                              color: appColorsBgLightColor,
                            );
                          },
                        ),
                        minimumSize: WidgetStateProperty.resolveWith((states) {
                          return const Size(120, 48);
                        }),
                      ),
                      child: const Text(
                        ' Accept ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () async {
                        await MarkTermsAgreed();
                        appRouter.replace(const AuthSignUpRoute());
                      },
                    ),

                    //
                  ],
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
    //##########################################
  }

  Future<bool> MarkTermsAgreed() async {
    LegalBloc legalBloc = getIt<LegalBloc>();
    legalBloc.add(UpdateLegalEvent(
        acceptedTerms: true, acceptedTermsVersion: currentTermsVersionString));
    return true;
  }
}
