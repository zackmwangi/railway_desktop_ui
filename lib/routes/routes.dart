import '../util/service_locator.dart';

part './routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.custom(
    durationInMilliseconds: 0,
    reverseDurationInMilliseconds: 0,
  );
  //
  @override
  List<AutoRoute> get routes => [
    //RedirectRoute(path: '/', redirectTo: '/startpoint'),
    RedirectRoute(path: '/', redirectTo: '/app'),
    //Init-Startpoint
    AutoRoute(
      //guards: [AppStartpointGuard()],
      initial: true,
      path: '/startpoint',
      page: StartpointScaffoldRoute.page,
      children: [
        AutoRoute(
          initial: true,
          path: '',
          page: StartpointRoute.page,
          //
        ),
      ],
    ),

    //
    //Intro slides
    AutoRoute(
      path: "/intros",
      page: IntroScaffoldRoute.page,
      children: [
        AutoRoute(
          initial: true,
          path: '',
          page: IntroRoute.page,
          //slide 1
          //slide 2
          //slide 3
        ),
      ],
    ),

    //Ensure Login + Auth
    AutoRoute(
      //guards: [AppLegalGuard(),],
      path: "/auth",
      page: AuthScaffoldRoute.page,
      children: [
        //
        //########
        //
        //sign-up
        AutoRoute(
          initial: true,
          path: 'auth-sign-up',
          page: AuthSignUpRoute.page,
        ),
        //sign-up
        AutoRoute(
          //initial: true,
          path: 'auth-sign-in',
          page: AuthSignUpRoute.page,
        ),
        //########
        /*
            //auth-wait
            AutoRoute(
              path: 'auth-loading',
              page: AuthLoading.page,
            ),
            //auth-error
            AutoRoute(
              path: 'auth-error',
              page: AuthError.page,
            ),
            //auth-logged-out
            AutoRoute(
              path: 'auth-signing-out',
              page: AuthSigningOut.page,
            ),
            //
            AutoRoute(
              path: 'auth-signed-out',
              page: AuthSignedOut.page,
            ),
            */
      ],
    ),
    //
    AutoRoute(
      //Must have agree to terms,
      //Be an authenticated FoodyGoo User
      //guards: [AppLegalGuard(), AppAuthGuard()],
      path: "/app",
      page: AppScaffoldRoute.page,
      children: [
        //################################################################
        AutoRoute(initial: true, path: 'app-home', page: HomeRoute.page),
        //################################################################
      ],
    ),

    //
  ];
}
