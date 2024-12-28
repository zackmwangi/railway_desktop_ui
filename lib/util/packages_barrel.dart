//################################################################
// This file aims to avail third party packages
// packages are listed in the pubspec.yaml file

export 'dart:async';
export 'dart:convert';

//
export 'package:flutter/foundation.dart';
export 'package:flutter/services.dart';
export 'package:flutter/material.dart';

import 'package:path_provider_android/path_provider_android.dart';
export 'package:path_provider_android/path_provider_android.dart';

import 'package:path_provider_foundation/path_provider_foundation.dart';
export 'package:path_provider_foundation/path_provider_foundation.dart';

import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
export 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
//
//App runner
export 'package:app_runner/app_runner.dart';
//#################################################

//Network connectivity
export 'package:connectivity_plus/connectivity_plus.dart';
export 'package:dio/dio.dart';

//Bloc
export 'package:equatable/equatable.dart';
export 'package:bloc/bloc.dart';
export 'package:bloc_concurrency/bloc_concurrency.dart';
export 'package:flutter_bloc/flutter_bloc.dart';
export 'package:hydrated_bloc/hydrated_bloc.dart';
//
//Hive
export 'package:hive/hive.dart';
// DI
export 'package:get_it/get_it.dart';
//Paths and storeage
export 'package:path_provider/path_provider.dart';
export 'package:shared_preferences/shared_preferences.dart';
//Routing
export 'package:auto_route/auto_route.dart';
//Data formatting and Intl
export 'package:json_annotation/json_annotation.dart';
export 'package:basic_utils/basic_utils.dart' hide DateUtils;
export 'package:intl/intl.dart' hide TextDirection;
//Fonts and iconography
export 'package:google_fonts/google_fonts.dart';
export 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

export 'package:flutter_exit_app/flutter_exit_app.dart';
export 'package:introduction_screen/introduction_screen.dart';

//Bottom sheet
export 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
export 'package:social_login_buttons/social_login_buttons.dart';

export 'package:flutter_svg/flutter_svg.dart';
