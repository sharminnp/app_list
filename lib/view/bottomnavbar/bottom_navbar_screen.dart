import 'package:app_list_machine_test/view/bottomnavbar/activity_screen.dart';
import 'package:app_list_machine_test/view/bottomnavbar/notification_screen.dart';
import 'package:app_list_machine_test/view/bottomnavbar/performance_screen.dart';
import 'package:app_list_machine_test/view/itemscreen/profilescreen/profile_screen.dart';
import 'package:app_list_machine_test/view/itemscreen/trainingscreen/training_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentIndex = 0;
  final screens = [
    TrainingScreen(),
    ProfileScreen(),
    PerformanceScreen(),
    ActivityScreen(),
    NotificationScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green[800],
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white70,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.model_training), label: "Training"),
            BottomNavigationBarItem(
                icon: Icon(Icons.app_settings_alt_rounded),
                label: "performance"),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_activity), label: "Activity"),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notifications"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile")
          ]),
    );
  }
}
