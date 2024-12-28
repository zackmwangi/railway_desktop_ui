import '../../../util/service_locator.dart';

@RoutePage()
class IntroScaffoldPage extends StatelessWidget {
  const IntroScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const AutoRouter();
    });
  }
}
