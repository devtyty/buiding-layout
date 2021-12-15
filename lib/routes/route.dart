import 'package:building_layout/screens/aspectratio/aspectratio.dart';
import 'package:building_layout/screens/home/home.dart';
import 'package:flutter/material.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (_) => const HomePage());
    case '/aspectratio':
      return MaterialPageRoute(builder: (_) => const AspectRatioPage());
    default:
  }
}
