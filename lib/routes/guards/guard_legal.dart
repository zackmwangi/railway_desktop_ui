import '../../util/service_locator.dart';

class AppLegalGuard extends AutoRouteGuard {
  //AppAuthGuard({required this.authBloc});
  AppLegalGuard();

  //final AuthenticationBloc authBloc; // = getIt<AuthenticationBloc>();
  final LegalBloc legalBloc = getIt<LegalBloc>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    //######
    // Require App Terms accepted
    //print("Legal state is ${legalBloc.state}");
    if (legalBloc.state is LegalBootstrappedState &&
        legalBloc.state.acceptedTerms) {
      //print("Terms accepted, going to Next route");
      resolver.resolveNext(true);
    } else {
      //Go to Terms page to enforce acceptance
      //sprint("Terms not accepted, going to terms route");
      resolver.resolveNext(false);
      resolver.redirect(const LegalScaffoldRoute(), replace: true);
    }
    //######
  }
}
