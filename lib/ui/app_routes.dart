import 'package:flutter/material.dart';
import 'package:telegram_clone/ui/authorization/sign_up.dart';
import 'package:telegram_clone/ui/home/home_screen.dart';

class RouteNames {
  static const String auth = "/";
  static const String home = "/home";
  static const String contactDetails = "/contact_details";
  static const String contactUpdate = "/contact_update";
}

class AppRoutes {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.auth:
        return MaterialPageRoute(builder: (context) => const SignUpScreen());
      case RouteNames.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      // case RouteNames.addContact:
      //   return MaterialPageRoute(builder: (context) {
      //     return AddContactScreen(
      //       listener: settings.arguments as VoidCallback,
      //     );
      //   });
      // case RouteNames.contactUpdate:
      //   return MaterialPageRoute(builder: (context) => UpdateContactScreen());
      // case RouteNames.contactDetails:
      //   return MaterialPageRoute(builder: (context) {
      //     Map<String, dynamic> map = settings.arguments as Map<String, dynamic>;
      //     return ContactDetailScreen(
      //       deleteListener: map["deleteListener"],
      //       contactModelSql: map["contactModelSql"],
      //     );
      //   });
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("Route mavjud emas"),
            ),
          ),
        );
    }
  }
}
