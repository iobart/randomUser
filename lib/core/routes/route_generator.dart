import 'package:flutter/material.dart';
import 'package:randomusers/core/utils/image_utils.dart';
import 'package:randomusers/random/constans/desing_constants.dart';
import 'package:randomusers/random/constans/route_constans.dart';
import 'package:randomusers/random/presentation/pages/home/home_view.dart';
import 'package:randomusers/random/presentation/pages/home/home_view_model.dart';
import 'package:randomusers/core/injection/injection_di.dart';

/// RouteGenerator is the class that manages the routes of the application and ijnjects the dependencies
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case homeRoute:
        return MaterialPageRoute<void>(
          builder: (BuildContext context) => HomeView(
          homeViewModel: locator<HomeViewModel>(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: getLottieFromJson(
                  fit: BoxFit.contain, height: 300, lottie: kWrongRoute),
            ),
          ),
        );
    }
  }
}
