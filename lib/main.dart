import 'package:flutter/material.dart';
import 'package:flutter_with_sanctum/screens/home_screen.dart';
import 'package:flutter_with_sanctum/screens/login_screen.dart';
import 'package:flutter_with_sanctum/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        // '/': (context) => const HomeScreen(),
        // '/login': (context) => const LoginScreen(),
        // '/signin': (context) => const SignInScreen()
      },
    );
  }
}
