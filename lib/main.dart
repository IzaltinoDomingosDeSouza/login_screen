import 'package:flutter/material.dart';
import 'package:login_app/login_screen.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Login App', home: const LoginScreen());
  }
}
