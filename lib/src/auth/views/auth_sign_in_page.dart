import '../../../util/service_locator.dart';

@RoutePage()
class AuthSignInPage extends StatelessWidget {
  const AuthSignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    //##########################################
    //
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Container(
          //##########
          child: Column(
            children: [
              //top
              SizedBox(
                height: 100,
              ),
              //mid
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 0, 160, 220),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 100,
                            width: 200,
                            child: const Text(
                              " Auth Sign in options",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  //
                ),
              ),
              //bottom
              SizedBox(
                height: 100,
                child: OutlinedButton(
                  style: const ButtonStyle(),
                  onPressed: () {
                    //
                    //
                  },
                  child: const Text(" Sign in with Google > "),
                ),
              ),
            ],
          ),
          //##########
        ),
      ),
      //
    );
    //##########################################
  }
}
