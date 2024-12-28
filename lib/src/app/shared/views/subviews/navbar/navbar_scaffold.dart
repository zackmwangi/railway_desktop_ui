import '../../../../../../../util/service_locator.dart';

class NavbarScaffold extends StatelessWidget {
  const NavbarScaffold({required this.activeNavbarSection, super.key});

  final NavbarSection activeNavbarSection;

  @override
  Widget build(BuildContext context) {
    //setActiveNavbarSection(activeNavbarSection);
    switch (activeNavbarSection) {
      //Feed
      case NavbarSection.home:
        navbarBloc.add(SelectHomeNavbarEvent());
        break;
      //Todo
      case NavbarSection.favs:
        navbarBloc.add(SelectFavsNavbarEvent());
        break;
      //Activity
      case NavbarSection.orders:
        navbarBloc.add(SelectOrdersNavbarEvent());
        break;
      //Messaging
      case NavbarSection.messages:
        navbarBloc.add(SelectMessagesNavbarEvent());
        break;
      //Profile
      case NavbarSection.cart:
        navbarBloc.add(SelectCartNavbarEvent());
        break;
      //
    }

    return NavbarMain();
  }
}
