import '../../../util/service_locator.dart';

@RoutePage()
class StartpointPage extends StatelessWidget {
  const StartpointPage({super.key});

  @override
  Widget build(BuildContext context) {
    //
    // Please wait, some initialization state
    /*
    return Container(
      child: const Text(" Starting up...Please wait.."),
    );
    */
    //
    //##########################################
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
                              " Starting up...Please wait..",
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
              ),
            ],
          ),
          //##########
        ),
      ),
    );
    //##########################################
    //
  }
}
