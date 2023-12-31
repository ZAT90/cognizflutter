import 'package:cognizflutter/blocs/contact/contact_bloc.dart';

import 'package:cognizflutter/constants/nav_constants.dart';
import 'package:cognizflutter/model/legend/legend_model.dart';
import 'package:cognizflutter/ui/screens/contact_list.dart';
import 'package:cognizflutter/ui/screens/landing.dart';
import 'package:cognizflutter/ui/screens/login.dart';
import 'package:cognizflutter/ui/screens/pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteNavigator {
  static Route generateRoute(RouteSettings? routeSettings) {
    switch (routeSettings?.name) {
      case NavConstants.landing:
        return MaterialPageRoute<LandingScreen>(
            builder: (context) => const LandingScreen());
      case NavConstants.pie:
        return MaterialPageRoute<PieScreen>(
            builder: (context) => PieScreen(
                  legendModel: routeSettings?.arguments as LegendModel,
                ));
      case NavConstants.login:
        return MaterialPageRoute<LoginScreen>(
          builder: (context) => const LoginScreen(),
        );
      case NavConstants.contacts:
        return MaterialPageRoute<ContactList>(
            builder: (context) => BlocProvider(
                  create: (context) => ContactBloc()
                    ..add(const ContactEvent.loadingContacts(
                        searchString: '', initList: [], searchedList: [])),
                  child: const ContactList(),
                ));
      default:
        return MaterialPageRoute<LoginScreen>(
            builder: (context) => const LoginScreen());
    }
  }
}
