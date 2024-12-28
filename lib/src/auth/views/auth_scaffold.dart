import '../../../util/service_locator.dart';

@RoutePage()
class AuthScaffoldPage extends StatelessWidget {
  const AuthScaffoldPage({super.key});

  //final Widget mobileBodyPage = const AuthSignUpPage();
  //final Widget tabletBodyPage = const AuthSignUpPage();

  @override
  Widget build(BuildContext context) {
    //return Container();

    //late Widget bodyWidget;

    return LayoutBuilder(builder: (context, constraints) {
      /*
      if (constraints.maxWidth <= maxMobileWidth) {
        bodyWidget = mobileBodyPage;
      } else {
        bodyWidget = allowTabletView ? tabletBodyPage : mobileBodyPage;
      }
      return bodyWidget;
      */
      return const AutoRouter();
    });
  }
}
