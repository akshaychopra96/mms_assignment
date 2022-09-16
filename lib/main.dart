import 'package:flutter/material.dart';
import 'package:mms_assignment/core/constants/common_constants.dart';
import 'package:mms_assignment/core/routes/route_generator.dart';
import 'package:mms_assignment/features/login/presentation/pages/login_signup_page.dart';
import 'package:mms_assignment/injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: CommonConstants.appTitle,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: LoginSignUpPage.routeName,
      theme: ThemeData.light(),
    );
  }
}
