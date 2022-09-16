import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mms_assignment/features/homepage/presentation/bloc/homepage_bloc.dart';
import 'package:mms_assignment/features/homepage/presentation/pages/homepage.dart';
import 'package:mms_assignment/features/login/presentation/pages/account_created_page.dart';
import 'package:mms_assignment/features/login/presentation/pages/create_account_page.dart';
import 'package:mms_assignment/features/login/presentation/pages/login_page.dart';
import 'package:mms_assignment/features/login/presentation/pages/login_signup_page.dart';
import 'package:mms_assignment/injection_container.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return _transitionRoute(const LoginPage());
      case Homepage.routeName:
        return _transitionRoute(
          BlocProvider<HomepageBloc>(
            create: (_) => sl<HomepageBloc>(),
            child: const Homepage(),
          ),
        );
      case CreateAccountPage.routeName:
        return _transitionRoute(const CreateAccountPage());
      case LoginSignUpPage.routeName:
        return _transitionRoute(const LoginSignUpPage());
      case AccountCreatedPage.routeName:
        return _transitionRoute(const AccountCreatedPage());

      default:
        return _transitionRoute(Container());
    }
  }

  static PageRoute _transitionRoute(Widget widget) {
    return MaterialPageRoute(
      builder: (_) => widget,
    );
  }
}
