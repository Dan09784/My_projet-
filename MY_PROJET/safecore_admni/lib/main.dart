import 'package:flutter/material.dart';
import 'splash_admin.dart';

void main() {
  runApp(FireAlertApp());
}

class FireAlertApp extends StatelessWidget {
  const FireAlertApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashAdmin(),
    );
  }
}
