import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_facts_mobile/screens/dashboard_screen.dart';
import 'package:fun_facts_mobile/screens/login_screen.dart';
import 'package:fun_facts_mobile/screens/register_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch(settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardSreen());
    }
  }
}
