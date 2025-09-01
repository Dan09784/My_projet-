import 'package:flutter/material.dart';

// ✅ Tes pages (elles existent déjà dans lib/screens/)
import 'screens/alerts_page.dart';
import 'screens/stats_page.dart';
import 'screens/users_page.dart';
import 'screens/settings_page.dart';
import 'screens/notifications_page.dart';

// (Optionnel) on garde un petit "Dashboard" interne pour l'instant
class _DashboardBody extends StatelessWidget {
  const _DashboardBody();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "📊 Tableau de bord (aperçu)\n— on ajoutera les cartes juste après —",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}

class HomeAdmin extends StatefulWidget {
  const HomeAdmin({super.key});

  @override
  State<HomeAdmin> createState() => _HomeAdminState();
}

class _HomeAdminState extends State<HomeAdmin> {
  int _selectedIndex = 0;

  // 🔗 Liste des écrans affichés au centre
  final List<Widget> _pages = const [
    _DashboardBody(), // onglet 0 : Dashboard (temporaire)
    AlertsPage(),     // onglet 1 : Alertes
    StatsPage(),      // onglet 2 : Statistiques
    UsersPage(),      // onglet 3 : Utilisateurs
    SettingsPage(),   // onglet 4 : Paramètres
  ];

  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  Future<void> _openNotifications() async {
    // Ouvre la page Notifications par-dessus (pas un onglet)
    await Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const NotificationsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Admin Dashboard"),
        backgroundColor: Colors.redAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: _openNotifications, // 🔔 Notifications
            tooltip: 'Notifications',
          ),
        ],
      ),
      body: _pages[_selectedIndex], // 👈 change selon l’onglet choisi

      // 🧭 Menu du bas pour passer d’une page à l’autre
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.redAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.warning),   label: 'Alertes'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.people),    label: 'Utilisateurs'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),  label: 'Paramètres'),
        ],
      ),
    );
  }
}