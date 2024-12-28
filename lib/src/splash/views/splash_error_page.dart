import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

//@RoutePage()
class SplashErrorPage extends StatelessWidget with SU {
  const SplashErrorPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        //extendBodyBehindAppBar: true,
        //extendBody: true,
        //backgroundColor: Color.fromARGB(255, 0, 160, 220),
        //backgroundColor: Colors.transparent,
        body: Container(
          color: Color.fromARGB(255, 0, 160, 220),
          //child: Text('Auth Init Mobile')),
          child: Text("Splash error page"),
          //
        ),
      ),
    );
  }
}
