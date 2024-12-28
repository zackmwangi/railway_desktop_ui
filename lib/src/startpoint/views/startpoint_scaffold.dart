import '../../../util/service_locator.dart';

@RoutePage()
class StartpointScaffoldPage extends StatelessWidget {
  const StartpointScaffoldPage({super.key});

  //final Widget mobileBodyPage = const StartpointPage();
  //final Widget tabletBodyPage = const StartpointPage();

  @override
  Widget build(BuildContext context) {
    //late Widget bodyWidget;

    //#######################
    //return bloc consumer for startpointBloc
    return BlocConsumer<StartpointBloc, StartpointState>(
      bloc: startpointBloc,
      listenWhen: (previousState, currentState) {
        if (previousState != currentState) {
          return true;
        }
        //
        return false;
      },
      listener: (context, state) {
        if (state is StartpointBootstrappedState) {
          if (state.startpointUser == StartpointUser.empty) {
            //go to intro
            appRouter.replace(const IntroScaffoldRoute());
            //appRouter.replace(const AuthSignInRoute());
          } else {
            //go to auth sign in
            appRouter.replace(const AuthSignInRoute());
          }
        }
      },
      builder: (context, state) {
        return LayoutBuilder(
          builder: (context, constraints) {
            /*
          if (constraints.maxWidth <= maxMobileWidth) {
            bodyWidget = mobileBodyPage;
          } else {
            bodyWidget = allowTabletView ? tabletBodyPage : mobileBodyPage;
          }
          return bodyWidget;
          */
            return const StartpointPage();
          },
        );
      },
    );
    //
    //#######################
    //

    //
    //#######################
  }
}
