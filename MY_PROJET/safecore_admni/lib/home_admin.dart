import 'package:flutter/material.dart';
import 'screens/alerts_page.dart';
import 'screens/notifications_page.dart';
import 'screens/settings_page.dart';
import 'screens/stats_page.dart';
import 'screens/users_page.dart';
class HomeAdmin extends StatelessWidget {
  const HomeAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin Dashbord"),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(child: Text("Bienvenue, Administrateur",
      style: TextStyle(fontSize:22, fontWeight: FontWeight.bold),),),
    );
  }
}
