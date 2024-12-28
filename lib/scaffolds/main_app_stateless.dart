import 'package:flutter_screenutil/flutter_screenutil.dart' as fscreenUtil;
import '../util/service_locator.dart';
//
export '../util/dev/dev_nav_observer.dart';

//import '../theme/theme.dart';
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  //final AppRouter appRouter = GetIt.instance<AppRouter>();

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        //################################
        //statusBarIconBrightness: Brightness.dark,
        //systemNavigationBarContrastEnforced: false,
        //systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );

    return fscreenUtil.ScreenUtilInit(
      designSize: const Size(fscreenUtilInitW, fscreenUtilInitH),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GestureDetector(
          onTap: () {
            //remove keyboard on touching anywhere on the screen.
            FocusScopeNode currentFocus = FocusScope.of(context);

            if (!currentFocus.hasPrimaryFocus) {
              currentFocus.unfocus();
              FocusManager.instance.primaryFocus?.unfocus();
            }
            //
          },
          //
          child: MaterialApp.router(
            debugShowCheckedModeBanner: debugShowCheckedModeBanner,
            debugShowMaterialGrid: debugShowMaterialGrid,
            routerConfig: appRouter.config(
              navigatorObservers:
                  !kReleaseMode ? () => [DevNavObserver()] : () => [],
            ),
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            themeMode: ThemeMode.system,
          ),
          //
        );
      },
    );
  }
}
