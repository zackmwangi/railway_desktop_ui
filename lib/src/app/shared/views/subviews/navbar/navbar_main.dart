import '../../../../../../../util/service_locator.dart';

class NavbarMain extends StatelessWidget {
  //const
  NavbarMain({super.key});

  /*
  final NavbarSection activeNavbarSection =
      navbarBloc.state.activeNavbarSection;
  */

  @override
  Widget build(BuildContext context) {
    //Establish selected section from bloc state
    //
    NavbarSection activeNavbarSection;

    return BlocConsumer<NavbarBloc, NavbarState>(
      bloc: navbarBloc,
      listenWhen: (previousState, currentState) {
        if (previousState != currentState) {
          return true;
        }
        return false;
      },
      listener: (context, state) {
        //
        // TODO: implement listener
        //print("############################################");
        //print("Current navbarBloc bloc state is $state");
        //print("############################################");
        //
      },
      buildWhen: (previousState, currentState) {
        if (previousState != currentState) {
          return true;
        }
        return false;
      },
      builder: (context, state) {
        //
        activeNavbarSection = state.activeNavbarSection;

        //
        return Container(
          height: navbarHeight,
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                  width: onboardingFooterTopBorderWidth,
                  color: appColorsBgLightColor150),
            ),
          ),

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //
              //Home
              SizedBox(
                width: navbarItemWidthMin,
                child: GestureDetector(
                  onTap: () {
                    //
                    navbarBloc.add(SelectHomeNavbarEvent());
                    appRouter.navigate(const HomeRoute());
                    //
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      //Icon
                      Container(
                        //height: 48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              weight: 0.5,
                              fill: 0.5,
                              grade: 0.5,
                              size: activeNavbarSection == NavbarSection.home
                                  ? navbarItemSizeSelected
                                  : navbarItemSize,
                              semanticLabel: navbarLabelFeed,
                              activeNavbarSection == NavbarSection.home
                                  ? MdiIcons.homeRoof
                                  : MdiIcons.homeRoof,
                              color: activeNavbarSection == NavbarSection.home
                                  ? appColorsBgLightColor
                                  : navbarItemColor,
                            ),
                          ],
                        ),
                      ),
                      //Text
                      Container(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              navbarLabelFeed,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    activeNavbarSection == NavbarSection.home
                                        ? navbarItemFontSize
                                        : navbarItemFontSizeSelected,
                                color: activeNavbarSection == NavbarSection.home
                                    ? appColorsBgLightColor
                                    : navbarItemColor,
                              ),
                            ),
                          ],
                        ),
                        //
                      ),
                      //
                      //
                    ],
                  ),
                ),
              ),
              //
              //Favs
              SizedBox(
                width: navbarItemWidthMin,
                child: GestureDetector(
                  onTap: () {
                    //
                    navbarBloc.add(SelectFavsNavbarEvent());
                    //appRouter.navigate(const TodoLandingRoute());
                    //
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      //Icon
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              weight: 0.5,
                              fill: 0.5,
                              grade: 0.5,
                              size: activeNavbarSection == NavbarSection.favs
                                  ? navbarItemSizeSelected
                                  : navbarItemSize,
                              semanticLabel: navbarLabelTodo,
                              activeNavbarSection == NavbarSection.favs
                                  ? MdiIcons.heart
                                  : MdiIcons.heartOutline,
                              color: activeNavbarSection == NavbarSection.favs
                                  ? appColorsBgLightColor
                                  : navbarItemColor,
                            ),
                          ],
                        ),
                      ),
                      //Text
                      Container(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              navbarLabelTodo,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    activeNavbarSection == NavbarSection.favs
                                        ? navbarItemFontSize
                                        : navbarItemFontSizeSelected,
                                color: activeNavbarSection == NavbarSection.favs
                                    ? appColorsBgLightColor
                                    : navbarItemColor,
                              ),
                            ),
                          ],
                        ),
                        //
                      ),
                      //
                      //
                    ],
                  ),
                ),
              ),
              //
              //Orders
              SizedBox(
                width: navbarItemWidthMin,
                child: GestureDetector(
                  onTap: () {
                    //
                    navbarBloc.add(SelectOrdersNavbarEvent());
                    //appRouter.navigate(const ActivityLandingRoute());
                    //
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      //Icon
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            /*
                            activeNavbarSection == NavbarSection.orders
                            
                                ? SvgPicture.asset(
                                    'assets/images/main_app/shared/navbar/activity_b.svg',
                                    height: navbarItemSizeSelected,
                                    width: navbarItemSizeSelected,
                                    colorFilter: const ColorFilter.mode(
                                        appColorsBgLightColor, BlendMode.srcIn),
                                    semanticsLabel: navbarLabelActivity)
                                : SvgPicture.asset(
                                    'assets/images/main_app/shared/navbar/activity_b.svg',
                                    height: navbarItemSize,
                                    width: navbarItemSize,
                                    colorFilter: const ColorFilter.mode(
                                        navbarItemColor, BlendMode.srcIn),
                                    semanticsLabel: navbarLabelActivity),
                                */
                            Icon(
                              weight: 0.5,
                              fill: 0.5,
                              grade: 0.5,
                              size: activeNavbarSection == NavbarSection.orders
                                  ? navbarItemSizeSelected
                                  : navbarItemSize,
                              semanticLabel: navbarLabelTodo,
                              activeNavbarSection == NavbarSection.orders
                                  ? MdiIcons.plusBox
                                  : MdiIcons.plusBoxOutline,
                              color: activeNavbarSection == NavbarSection.orders
                                  ? appColorsBgLightColor
                                  : navbarItemColor,
                            ),
                          ],
                        ),
                      ),
                      //Text
                      Container(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              navbarLabelActivity,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    activeNavbarSection == NavbarSection.orders
                                        ? navbarItemFontSize
                                        : navbarItemFontSizeSelected,
                                color:
                                    activeNavbarSection == NavbarSection.orders
                                        ? appColorsBgLightColor
                                        : navbarItemColor,
                              ),
                            ),
                          ],
                        ),
                        //
                      ),
                      //
                      //
                    ],
                  ),
                ),
              ),
              //
              //Messages
              SizedBox(
                width: navbarItemWidthMin,
                child: GestureDetector(
                  onTap: () {
                    //
                    navbarBloc.add(SelectMessagesNavbarEvent());
                    //appRouter.navigate(const MessagingLandingRoute());
                    //
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      //Icon
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              weight: 0.5,
                              fill: 0.5,
                              grade: 0.5,
                              size:
                                  activeNavbarSection == NavbarSection.messages
                                      ? navbarItemSizeSelected
                                      : navbarItemSize,
                              semanticLabel: navbarLabelMessaging,
                              activeNavbarSection == NavbarSection.messages
                                  ? MdiIcons.chat
                                  : MdiIcons.chatOutline,
                              color:
                                  activeNavbarSection == NavbarSection.messages
                                      ? appColorsBgLightColor
                                      : navbarItemColor,
                            ),
                          ],
                        ),
                      ),
                      //Text
                      Container(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              navbarLabelMessaging,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: activeNavbarSection ==
                                        NavbarSection.messages
                                    ? navbarItemFontSize
                                    : navbarItemFontSizeSelected,
                                color: activeNavbarSection ==
                                        NavbarSection.messages
                                    ? appColorsBgLightColor
                                    : navbarItemColor,
                              ),
                            ),
                          ],
                        ),
                        //
                      ),
                      //
                      //
                    ],
                  ),
                ),
              ),
              //
              //Cart
              SizedBox(
                width: navbarItemWidthMin,
                child: GestureDetector(
                  onTap: () {
                    //
                    navbarBloc.add(SelectCartNavbarEvent());
                    //
                    //appRouter.navigate(const ProfileLandingRoute());

                    //
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      //Icon
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              weight: 0.5,
                              fill: 0.5,
                              grade: 0.5,
                              size: activeNavbarSection == NavbarSection.cart
                                  ? navbarItemSizeSelected
                                  : navbarItemSize,
                              semanticLabel: navbarLabelProfile,
                              activeNavbarSection == NavbarSection.cart
                                  ? MdiIcons.cartCheck
                                  : MdiIcons.cartCheck,

                              /*
                              activeNavbarSection == NavbarSection.cart
                                  ? MdiIcons.accountCircle
                                  : MdiIcons.accountCircleOutline,
                                  */
                              color: activeNavbarSection == NavbarSection.cart
                                  ? appColorsBgLightColor
                                  : navbarItemColor,
                            ),
                          ],
                        ),
                      ),
                      //Text
                      Container(
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              navbarLabelProfile,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize:
                                    activeNavbarSection == NavbarSection.cart
                                        ? navbarItemFontSize
                                        : navbarItemFontSizeSelected,
                                color: activeNavbarSection == NavbarSection.cart
                                    ? appColorsBgLightColor
                                    : navbarItemColor,
                              ),
                            ),
                          ],
                        ),
                        //
                      ),
                      //
                      //
                    ],
                  ),
                ),
              ),
              //
            ],
          ),
          //
        );
      },
    );
  }
}
