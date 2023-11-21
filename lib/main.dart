import 'package:flutter/material.dart';
import 'package:sixth_module_one_lesson/pages/homeworkpage/homework_page.dart';
import 'package:sixth_module_one_lesson/pages/registerpage/register_page.dart';
// import 'package:sixth_module_one_lesson/pages/navigation_rail/navigation_rail.dart';
// import 'package:sixth_module_one_lesson/pages/sliverpage/sliver_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Slivers",
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue.shade800,
        ),
      ),
      initialRoute: LoginPage.route,
      routes: {
        LoginPage.route: (context) {
          return const LoginPage();
        },
        RegisterPage.route: (context) {
          return const RegisterPage();
        }
      },
    );
  }
}
