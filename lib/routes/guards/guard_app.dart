import '../../util/service_locator.dart';

class AppAuthGuard extends AutoRouteGuard {
  //AppAuthGuard({required this.authBloc});
  AppAuthGuard();

  //final AuthenticationBloc authBloc; // = getIt<AuthenticationBloc>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //######
    //Require Autheticated user
    //if(user is authenticated){
    resolver.resolveNext(true);
    //}
    //else{
    //resolver.resolveNext(false);
    //resolver.redirect(const AuthLoginScaffoldRoute(), replace: true);
    //}
    //######
  }
}
