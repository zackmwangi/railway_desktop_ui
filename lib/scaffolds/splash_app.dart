import 'package:flutter_screenutil/flutter_screenutil.dart' as fscreenUtil;
import '../util/service_locator.dart';

class SplashApp extends StatelessWidget {
  const SplashApp({super.key, required this.showError});

  final bool showError;
  //late Widget pageToShow;

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarDividerColor: Colors.transparent,
        statusBarColor: Colors.transparent,
        //systemNavigationBarContrastEnforced: false,
        //systemNavigationBarIconBrightness: Brightness.dark,
        //statusBarIconBrightness: Brightness.dark,
      ),
    );

    return fscreenUtil.ScreenUtilInit(
      designSize: const Size(fscreenUtilInitW, fscreenUtilInitH),
      minTextAdapt: true,
      splitScreenMode: true,
      //child: showError ? const SplashErrorPage() : const SplashPage(),
      child: showError ? const SplashErrorPage() : const SplashPage(),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: debugShowCheckedModeBanner,
          //navigatorObservers: [DevNavObserver()],
          home: child,
        );
      },
    );
  }
}
