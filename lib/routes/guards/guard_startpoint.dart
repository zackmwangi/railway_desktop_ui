import '../../util/service_locator.dart';

class AppStartpointGuard extends AutoRouteGuard {
  //AppAuthGuard({required this.authBloc});
  //AppStartpointGuard({required this.startpointBloc});
  //
  AppStartpointGuard();

  final StartpointBloc startpointBloc = getIt<StartpointBloc>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //
    //######
    //
    if (startpointBloc.state.startpointUser == StartpointUser.empty) {
      //print("User never seen before: going intro");
      //goto intro slides
      resolver.resolveNext(false);
      resolver.redirect(const IntroScaffoldRoute(), replace: true);
      //resolver.redirect(const AuthSignInRoute(), replace: true);
    } else {
      //print("Returning User: going to auth : sign in");
      resolver.resolveNext(false);
      //resolver.redirect(const AuthScaffoldRoute(), replace: true);
      resolver.redirect(const AuthSignInRoute(), replace: true);
    }
    //
    //######
    //
  }
}
