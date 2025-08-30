import 'package:flutter/material.dart';
import 'dart:async';
import 'home_admin.dart';

class SplashAdmin extends StatefulWidget {
  const SplashAdmin({super.key});

  @override
  State<SplashAdmin> createState() => _SplashAdminState();
}

class _SplashAdminState extends State<SplashAdmin> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeAdmin()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.local_fire_department, size: 100, color: Colors.white,),
          SizedBox(height: 20),
          Text("Fire Alert Admin",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          ),
          SizedBox(height: 10),
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          )
        ],
      )),
    );
  }
}
