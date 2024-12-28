import 'package:flutter/material.dart';

//Screen and device control
const double fscreenUtilInitW = 360;
const double fscreenUtilInitH = 690;

const double maxMobileWidth = 500;
const double maxMobileDrawerWidth = 480;

const double maxTabWidth = 950;
//const double maxTabDrawerWidth = 600;
//const int tabletWidthCutOut = 951;
//
const bool allowTabletView = false;

//##########################################
const bool debugShowCheckedModeBanner = true;
const bool debugShowMaterialGrid = false;
const String initResultOk = "INIT_OK";
//##########################################

//Colors

const Color appColorsBgLightColor = const Color.fromARGB(255, 239, 42, 57);
const Color appColorsBgLightColor32 = const Color.fromARGB(32, 239, 42, 57);
const Color appColorsBgLightColor64 = const Color.fromARGB(64, 239, 42, 57);
const Color appColorsBgLightColor100 = const Color.fromARGB(100, 239, 42, 57);
const Color appColorsBgLightColor128 = const Color.fromARGB(128, 239, 42, 57);
const Color appColorsBgLightColor150 = const Color.fromARGB(150, 239, 42, 57);
const Color appColorsBgLightColor200 = const Color.fromARGB(200, 239, 42, 57);
//
const Color appColorsFadedLightColor = const Color.fromARGB(220, 118, 117, 112);

//
//################################################################

const introDotsSize = Size(16, 16);
const introDotsSizeActive = Size(20, 20);

//

const double splashStatusBarHeight = 30;
const double statusBarHeight = 30;
const double onboardingAppBarHeight = 70;

const double splashFooterHeight = 160;
const double introFooterHeight = 50;
const double termsFooterHeight = 80;

const double appBarHeight = 60;
const double appbarBottomBorderWidth = 0.5;
const double appBarHeightExtended = 100;
//
//
const double onboardingFooterHeight = 80;
const EdgeInsetsGeometry onboardingContentMargins = EdgeInsets.fromLTRB(
  8,
  4,
  8,
  8,
);
const double onboardingAppbarBottomBorderWidth = 0.5;
const double onboardingFooterTopBorderWidth = 0.5;

const double onboardingHeadingHeight = 48;
const double onboardingHeadingFontSize = 16;
//
const double navbarHeight = 70;
const double navbarItemWidthMin = 60;

const double navbarItemSize = 28;
const double navbarItemSizeSelected = 36;
//
const Color navbarItemColor = appColorsFadedLightColor;
const Color navbarItemColorSelected = appColorsBgLightColor;
//
const double navbarItemFontSize = 10;
const double navbarItemFontSizeSelected = 11;

//################################################################

//################################################################
//
enum NavbarSection { home, favs, orders, messages, cart }

//
String navbarLabelFeed = "Home";
String navbarLabelTodo = "Favs";
String navbarLabelActivity = "Orders";
String navbarLabelMessaging = "Messages";
String navbarLabelProfile = "Cart";

//################################################################
//
String introSlideHeading1 = "Order from your favorite stores or vendors";
String introSlideDescription1 = "";

//
String introSlideHeading2 = "Choose from a wide range of  delicious meals.";
String introSlideDescription2 = "";

//
String introSlideHeading3 = "Enjoy instant delivery and payment";
String introSlideDescription3 = "";

String currentTermsVersionString = 'v1.5';
String termsHeading = "We stand for your privacy.";
String termsExplainer =
    "To safeguard the interests of the users of our services, we require that you accept to operate within the terms and guidelines of the platform. You can access the full versions by tapping on the buttons below.";
//################################################################
