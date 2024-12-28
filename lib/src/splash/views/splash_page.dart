import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../util/constants.dart';

//@RoutePage()
class SplashPage extends StatelessWidget with SU {
  const SplashPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //##########################################
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        //backgroundColor: Color.fromARGB(255, 0, 160, 220),
        //backgroundColor: Colors.transparent,
        //backgroundColor: Colors.white,
        backgroundColor: appColorsBgLightColor,

        body: Stack(
          children: [
            //Header
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: statusBarHeight,
              ),
            ),
            //Body - Main logo
            Positioned(
              top: statusBarHeight,
              bottom: splashFooterHeight,
              left: 0,
              right: 0,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          //color: const Color.fromARGB(255, 187, 123, 123),
                          border: Border.all(
                        color: appColorsBgLightColor,
                      )),
                      child: Image.asset(
                        'assets/images/splash/foodygoo_logo_1024_1024.png',
                        height: 200,
                        width: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Footer - Company Logo
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                //child: Text("footer"),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //
                    Container(
                      height: 300,
                      width: 300,
                      decoration: BoxDecoration(
                          //color: const Color.fromARGB(255, 187, 123, 123),
                          border: Border.all(
                        color: appColorsBgLightColor,
                      )),
                      child: Image.asset(
                        'assets/images/splash/splash_burgers.png',
                        height: 300,
                        width: 300,
                      ),
                    ),

                    //
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    //##########################################
  }
//
}
