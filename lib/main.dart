import 'package:cognizflutter/constants/nav_constants.dart';
import 'package:cognizflutter/constants/ui_constants.dart';
import 'package:cognizflutter/utils/routes.dart';
import 'package:cognizflutter/utils/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: UiConstants.appTheme,
      initialRoute: NavConstants.landing,
      onGenerateRoute: RouteNavigator.generateRoute,
    );
  }
}
