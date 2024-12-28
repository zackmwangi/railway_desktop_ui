import '../../../util/service_locator.dart';

//@RoutePage()
class LegalPrivacyPage extends StatelessWidget {
  const LegalPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    //##########################################
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        backgroundColor: Colors.white,
        body: Stack(
          children: [
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
            Positioned(
              top: statusBarHeight,
              left: 0,
              right: 0,
              child: Container(
                  //height: 30,
                  child: Column(
                children: [
                  //Heading
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 30,
                    child: Text(
                      " Privacy Policy ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //color: Colors.white,
                        //color: appColorsBgLightColor150,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //Body
                  Container(
                    child: Column(
                      children: [
                        //
                      ],
                    ),
                  ),
                ],
              )
                  //
                  //
                  ),
            ),
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
                          minimumSize:
                              WidgetStateProperty.resolveWith((states) {
                            return const Size(120, 48);
                          }),
                        ),
                        child: const Text(
                          ' Close ',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () async {
                          //await MarkTermsAgreed();
                          //appRouter.replace(const AuthSignUpRoute());
                          Navigator.pop(context);
                        },
                      ),

                      //
                    ],
                  )),
            ),
            //
          ],
        ),
      ),
    );
  }
}
