import '../../../../util/service_locator.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            //##########################
            //Appbar
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              //child: AppbarFeedLanding(),
              child: Container(
                height: statusBarHeight,
                decoration: const BoxDecoration(color: appColorsBgLightColor),
              ),
            ),
            //Bottom
            //##########################
            /*
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,

              child: NavbarScaffold(activeNavbarSection: NavbarSection.home),

              //schild: Container(),
            ),
            */
            //
            //##########################
            // Body
            Positioned(
              top: statusBarHeight, // + appBarHeight,
              bottom: navbarHeight,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    //
                    Container(
                      child: Row(
                        children: [
                          //Side menu
                          Container(
                            width: 200,
                            color: Colors.greenAccent,
                            child: Column(
                              children: [
                                Container(
                                  width: 200,
                                  height: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,

                                    children: [
                                      Text(
                                        "My Containers",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 8),
                          //Main content area
                          Expanded(
                            child: Container(
                              color: Colors.greenAccent,
                              child: Column(
                                children: [
                                  //Menu bar
                                  Container(
                                    width: 200,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,

                                      children: [
                                        Text(
                                          "listing",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  //Body Area for container actions
                                  //Dashboard
                                  //
                                  Container(),
                                  // Listing of existing containers and actions
                                  //
                                  // - Restart
                                  // - View logs
                                  // - Delete
                                  //
                                  //
                                  // Add new container process
                                  // form to collect info
                                  // wait/error
                                  // success/listing
                                  //
                                  //
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //
            //##########################
          ],
        ),
      ),
    );
    //##########################################
  }
}
