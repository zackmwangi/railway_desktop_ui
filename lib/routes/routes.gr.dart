// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

/// generated route for
/// [AppScaffoldPage]
class AppScaffoldRoute extends PageRouteInfo<void> {
  const AppScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          AppScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppScaffoldRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppScaffoldPage();
    },
  );
}

/// generated route for
/// [AuthScaffoldPage]
class AuthScaffoldRoute extends PageRouteInfo<void> {
  const AuthScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          AuthScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthScaffoldRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthScaffoldPage();
    },
  );
}

/// generated route for
/// [AuthSignInPage]
class AuthSignInRoute extends PageRouteInfo<void> {
  const AuthSignInRoute({List<PageRouteInfo>? children})
      : super(
          AuthSignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthSignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthSignInPage();
    },
  );
}

/// generated route for
/// [AuthSignUpPage]
class AuthSignUpRoute extends PageRouteInfo<void> {
  const AuthSignUpRoute({List<PageRouteInfo>? children})
      : super(
          AuthSignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthSignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AuthSignUpPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [IntroPage]
class IntroRoute extends PageRouteInfo<IntroRouteArgs> {
  IntroRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          IntroRoute.name,
          args: IntroRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'IntroRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<IntroRouteArgs>(orElse: () => const IntroRouteArgs());
      return IntroPage(key: args.key);
    },
  );
}

class IntroRouteArgs {
  const IntroRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'IntroRouteArgs{key: $key}';
  }
}

/// generated route for
/// [IntroScaffoldPage]
class IntroScaffoldRoute extends PageRouteInfo<void> {
  const IntroScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          IntroScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'IntroScaffoldRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const IntroScaffoldPage();
    },
  );
}

/// generated route for
/// [LegalAgreeTermsPage]
class LegalAgreeTermsRoute extends PageRouteInfo<void> {
  const LegalAgreeTermsRoute({List<PageRouteInfo>? children})
      : super(
          LegalAgreeTermsRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalAgreeTermsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LegalAgreeTermsPage();
    },
  );
}

/// generated route for
/// [LegalScaffoldPage]
class LegalScaffoldRoute extends PageRouteInfo<void> {
  const LegalScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          LegalScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'LegalScaffoldRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LegalScaffoldPage();
    },
  );
}

/// generated route for
/// [StartpointPage]
class StartpointRoute extends PageRouteInfo<void> {
  const StartpointRoute({List<PageRouteInfo>? children})
      : super(
          StartpointRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartpointRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartpointPage();
    },
  );
}

/// generated route for
/// [StartpointScaffoldPage]
class StartpointScaffoldRoute extends PageRouteInfo<void> {
  const StartpointScaffoldRoute({List<PageRouteInfo>? children})
      : super(
          StartpointScaffoldRoute.name,
          initialChildren: children,
        );

  static const String name = 'StartpointScaffoldRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const StartpointScaffoldPage();
    },
  );
}
