import 'package:dashboard_dpxd/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LoginMain());
}

class LoginMain extends StatelessWidget {
  const LoginMain({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',

      initialRoute: '/',
      routes: {
        '/':(context) => LoginScreen()
      },
      home: const LoginScreen(),
    );
  }
}