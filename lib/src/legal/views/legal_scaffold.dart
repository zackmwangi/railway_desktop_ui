import '../../../util/service_locator.dart';

@RoutePage()
class LegalScaffoldPage extends StatelessWidget {
  const LegalScaffoldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return const AutoRouter();
    });
  }
}
