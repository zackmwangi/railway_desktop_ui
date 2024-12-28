import 'packages_barrel.dart';
export 'packages_barrel.dart';

export 'constants.dart';

import '../../../routes/routes_barrel.dart';
export '../../../routes/routes_barrel.dart';

import 'data_barrel.dart';
export 'data_barrel.dart';

export '../../theme/theme.dart';
export '../../scaffolds/scaffolds_barrel.dart';

//########
final GetIt getIt = GetIt.instance;
//inal Connectivity connectivity = Connectivity();
//########

Future<void> registerServiceLocatorDependencies() async {
  //#####
  getIt.registerSingleton<Connectivity>(Connectivity());
  getIt.registerSingleton<AppRouter>(AppRouter());
  //################################

  // Monitor connectivity
  getIt.registerLazySingleton<ConnectivityBloc>(
    () => ConnectivityBloc(connectivity: connectivity),
  );
  //Startpoint
  getIt.registerLazySingleton<StartpointBloc>(() => StartpointBloc());

  //Intro
  getIt.registerLazySingleton<IntroBloc>(() => IntroBloc());

  //Legal terms Acceptance
  getIt.registerLazySingleton<LegalBloc>(() => LegalBloc());
  /*
  //New Registrant
  getIt.registerLazySingleton<RegistrationBloc>(() => RegistrationBloc());
  */
  //Existing User Auth
  getIt.registerLazySingleton<AuthBloc>(
    () => AuthBloc(
      //userRepository: getIt<UserRepository>(),
      //authenticationRepository: getIt<AuthenticationRepository>(),
    ),
  );

  //Main App
  getIt.registerLazySingleton<MainappBloc>(() => MainappBloc());
  //Shared
  getIt.registerLazySingleton<NavbarBloc>(() => NavbarBloc());
  //

  //################################
}

//Globals
final Connectivity connectivity = getIt<Connectivity>();
final AppRouter appRouter = getIt<AppRouter>();
//
//###
//
final ConnectivityBloc connectivityBloc = getIt<ConnectivityBloc>();
final StartpointBloc startpointBloc = getIt<StartpointBloc>();

final IntroBloc introBloc = getIt<IntroBloc>();
final LegalBloc legalBloc = getIt<LegalBloc>();
final AuthBloc authBloc = getIt<AuthBloc>();
//#
final NavbarBloc navbarBloc = getIt<NavbarBloc>();
//Main App
final MainappBloc mainappBloc = getIt<MainappBloc>();
