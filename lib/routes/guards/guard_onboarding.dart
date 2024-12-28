import '../../util/service_locator.dart';

class AppOnboardingGuard extends AutoRouteGuard {
  //AppAuthGuard({required this.authBloc});
  AppOnboardingGuard();

  //final AuthenticationBloc authBloc; // = getIt<AuthenticationBloc>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //######
    // Require Authenticated registrant
    // if(AuthenticatedRegistrant){
    resolver.resolveNext(true);
    //}else{
    //resolver.resolveNext(false);
    //resolver.redirect(const AuthLoginScaffoldRoute(), replace: true);
    //}
    //######
  }
}
