import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, TargetPlatform;

import 'dart:io';

import 'dart:developer' as dev;
//

export './util/packages_barrel.dart';
import './util/service_locator.dart';
import './util/dev/dev_bloc_observer.dart';
export './util/dev/dev_nav_observer.dart';
//###############

void log(
  Object? message, {
  DateTime? time,
  int? sequenceNumber,
  int level = 0,
  String name = '',
  Zone? zone,
  Object? error,
  StackTrace? stackTrace,
}) {
  dev.log(
    message?.toString() ?? '',
    time: time,
    sequenceNumber: sequenceNumber,
    level: level,
    name: name,
    zone: zone,
    error: error,
    stackTrace: stackTrace,
  );
}

//########################################################################
void main() async {
  final WidgetConfiguration widgetConfiguration = WidgetConfiguration(
    //
    //##################################
    child: AppBuilder<String>(
      preInitialize: (WidgetsBinding binding) async {
        //Here we initialize the App
        /*
        late final String? appDirNative;

        //final PathProviderPlatform provider = PathProviderPlatform.instance;

        if (defaultTargetPlatform == TargetPlatform.android) {
          appDirNative =
              await PathProviderPlatform.instance.getApplicationDocumentsPath();
        }

        if (defaultTargetPlatform == TargetPlatform.iOS) {
          appDirNative =
              await PathProviderFoundation().getApplicationDocumentsPath();
        }

        //final appDirNative = await getApplicationDocumentsDirectory();
        final appDir =
            kIsWeb ? HydratedStorage.webStorageDirectory : appDirNative;

        HydratedBloc.storage = await HydratedStorage.build(
          storageDirectory: appDir is Directory ? appDir : getApplicationDocumentsDirectory(),
        );

        Bloc.observer = DevAppBlocObserver();

        Hive.init(appDir.path);
        */

        await registerServiceLocatorDependencies();

        final connectivityBloc = getIt<ConnectivityBloc>();
        connectivityBloc.add(InitializeConnectivityEvent());

        await Future.delayed(const Duration(seconds: 3));

        return initResultOk;
      },
      builder: (
        BuildContext context,
        AsyncSnapshot<String?> snapshot,
        Widget? child,
      ) {
        String initializationResultData = "";
        Widget childWidget = const SplashApp(showError: true);

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.active:
          case ConnectionState.waiting:
            childWidget = const SplashApp(showError: false); // show Splash
            //continue displayInitializationResult;
            break;
          /*
          case ConnectionState.done:
            continue displayInitializationResult;
          //displayInitializationError:
          displayInitializationResult:
          */
          default:
            if (snapshot.hasData) {
              initializationResultData =
                  snapshot.data ?? initializationResultData;
              if (initializationResultData == initResultOk) {
                childWidget = const MainApp();
              }
            } else if (snapshot.hasError) {
              //
              print("#########################");
              print("");
              print("");
              print("Snapshot has error: ${snapshot.error}");
              print("");
              print("");
              print("#########################");
              /*
              childWidget = const SplashApp(
                showError: true,
              );
              */
            }
            break;
        }

        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: childWidget,
        );
      },
    ),

    //##################################
    onFlutterError: (FlutterErrorDetails errorDetails) {
      //FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
      log(
        errorDetails.toStringShort(),
        name: 'onFlutterError',
        stackTrace: errorDetails.stack,
        error: errorDetails.exception,
      );
    },
    //##################################
    //
  );
  //Zone configuration
  final ZoneConfiguration zoneConfiguration = ZoneConfiguration(
    onZoneError: (Object error, StackTrace stackTrace) {
      // Dart error handling
      log(
        error.runtimeType.toString(),
        name: 'onZoneError',
        stackTrace: stackTrace,
        error: error,
      );
    },
  );

  appRunner(
    kIsWeb
        ? RunnerConfiguration(
          widgetConfig: widgetConfiguration,
          onPlatformError: (Object exception, StackTrace stackTrace) {
            log(
              exception.runtimeType.toString(),
              name: 'onPlatformError',
              stackTrace: stackTrace,
              error: exception,
            );

            return false;
          },
        )
        : RunnerConfiguration.guarded(
          widgetConfig: widgetConfiguration,
          zoneConfig: zoneConfiguration,
        ),
  );
}

//########################################################################
