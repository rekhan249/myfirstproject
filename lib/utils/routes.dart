import 'package:flutter/material.dart';
import 'package:nsdd/pages/login_page.dart';

import 'package:nsdd/errors/exceptions.dart';
import 'package:nsdd/pages/personal_infomation.dart';
import 'package:nsdd/pages/profile_page.dart';
import 'package:nsdd/pages/qualifivation.dart';
import 'package:nsdd/pages/recover_password.dart';
import 'package:nsdd/pages/signup_page.dart';

class RouteGenerator {
  static const String splash = '/';
  static const String login = 'login';
  static const String signup = 'signup';
  static const String personal = 'personal';
  static const String qualify = 'qualify';
  static const String recover = 'recover';
  static const String profilePage = 'profilePage';
  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case signup:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case personal:
        return MaterialPageRoute(
            builder: (_) => const PersonalInformationPage());
      case qualify:
        return MaterialPageRoute(builder: (_) => const Qualification());
      case recover:
        return MaterialPageRoute(builder: (_) => const RecoverPassword());
      case profilePage:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      default:
        throw RouteException('Route not found');
    }
  }
}
