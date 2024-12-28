import '../../../util/service_locator.dart';

@RoutePage()
class AuthSignUpPage extends StatelessWidget {
  const AuthSignUpPage({super.key});

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
            Positioned(
              top: statusBarHeight,
              left: 0,
              right: 0,
              child: Container(
                  child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  SizedBox(
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login or sign up",
                            style: TextStyle(
                              //color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    //height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              //color: const Color.fromARGB(255, 187, 123, 123),
                              border: Border.all(
                            color: Colors.white,
                          )),
                          child: Image.asset(
                            'assets/images/auth/foodygoo_logo_1024_1024.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    //height: 300,
                    width: 360,
                    //color: Color.fromARGB(255, 243, 172, 172),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 350,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        //color: Color.fromARGB(255, 0, 160, 220),
                                        //color: Color.fromARGB(255, 0, 160, 220),
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SocialLoginButton(
                                          //backgroundColor: Colors.white,
                                          borderRadius: 8,
                                          height: 70,
                                          width: 320,
                                          imageWidth: 48,
                                          fontSize: 20,
                                          buttonType:
                                              SocialLoginButtonType.google,
                                          onPressed: () {
                                            //
                                            //

                                            //authBloc.add(
                                            //LoginWithGoogle(),
                                            //);

                                            appRouter.replace(
                                              //const OnboardingGuardianLandingRoute(),
                                              const HomeRoute(),
                                            );

                                            //
                                            //
                                            /*
                                            appRouter.replace(
                                                MainappActivityScaffoldRoute());
                                            */
                                            //
                                            //
                                            /*
                                            appRouter.replace(
                                              const OnboardingIntroScaffoldRoute(),
                                            );
                                            */

                                            //
                                            //
                                          },
                                          mode: SocialLoginButtonMode.single,
                                          text: 'Continue with Google',
                                        ),
                                      ],
                                    )),
                              ],
                            )),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 350,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        //color: Color.fromARGB(255, 0, 160, 220),
                                        //color: Color.fromARGB(255, 0, 160, 220),
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SocialLoginButton(
                                          //backgroundColor: Colors.white,
                                          borderRadius: 8,
                                          height: 70,
                                          width: 320,
                                          imageWidth: 48,
                                          fontSize: 18,
                                          buttonType:
                                              SocialLoginButtonType.facebook,
                                          onPressed: () {},
                                          mode: SocialLoginButtonMode.single,
                                          text: 'Continue with Facebook',
                                        ),
                                      ],
                                    )),
                              ],
                            )),
                        SizedBox(
                          height: 16,
                        ),
                        Container(
                            height: 80,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                    width: 350,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        //color: Color.fromARGB(255, 0, 160, 220),
                                        //color: Color.fromARGB(255, 0, 160, 220),
                                      ),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(8)),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        SocialLoginButton(
                                          //backgroundColor: Colors.white,
                                          borderRadius: 8,
                                          height: 70,
                                          width: 320,
                                          imageWidth: 48,
                                          fontSize: 18,
                                          buttonType:
                                              SocialLoginButtonType.appleBlack,
                                          onPressed: () {},
                                          mode: SocialLoginButtonMode.single,
                                          text: 'Continue with Apple',
                                        ),
                                      ],
                                    )),
                              ],
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                            //height: 160,
                            width: 356,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(217, 255, 255, 255),
                              border: Border.all(
                                color: Colors.white,
                                //color: Color.fromARGB(255, 0, 160, 220),
                                //color: Color.fromARGB(255, 0, 160, 220),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'By continuing, you agree to the Terms of Use and the Privacy Policy of the platform.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      //fontWeight: FontWeight.bold,
                                      //color: Color.fromARGB(255, 255, 255, 255),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
      //Header
      //Content
    );
    //##########################################
  }
}
