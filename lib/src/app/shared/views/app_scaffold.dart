import '../../../../util/service_locator.dart';

@RoutePage()
class AppScaffoldPage extends StatelessWidget {
  const AppScaffoldPage({super.key});

  //final Widget mobileBodyPage = const AppActivityScaffoldPage();
  //final Widget tabletBodyPage = const AppActivityScaffoldPage();

  @override
  Widget build(BuildContext context) {
    //return Container();

    //late Widget bodyWidget;

    return LayoutBuilder(builder: (context, constraints) {
      return const AutoRouter();
    });
  }
}
