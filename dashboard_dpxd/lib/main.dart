import 'package:dashboard_dpxd/login_screen.dart'; // Asegúrate de importar el archivo correcto
import 'package:dashboard_dpxd/screen/main_screen.dart'; // Asegúrate de importar el archivo correcto
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white),
        canvasColor: secondaryColor,
      ),
      initialRoute: '/login',
      routes: {
        '/login':(context) => const LoginScreen(),
        '/dashboard':(context) => const MainScreen(),

      },
    );
  }

}
