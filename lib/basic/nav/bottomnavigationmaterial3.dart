import 'package:flutter/material.dart';

class BottomNavigationMaterial3 extends StatefulWidget {
  const BottomNavigationMaterial3({Key? key}) : super(key: key);

  @override
  State<BottomNavigationMaterial3> createState() =>
      _BottomNavigationMaterial3State();
}

class _BottomNavigationMaterial3State extends State<BottomNavigationMaterial3> {
  int scIndex = 0;
  final screens = [
    const Center(child: Text("Dashboard", style: TextStyle(fontSize: 72))),
    const Center(child: Text("Chat", style: TextStyle(fontSize: 72))),
    const Center(child: Text("Shop", style: TextStyle(fontSize: 72))),
    const Center(child: Text("Profile", style: TextStyle(fontSize: 72))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[scIndex],
      bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              labelTextStyle: MaterialStateProperty.all(
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.w500))),
          child: NavigationBar(
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              selectedIndex: scIndex,
              onDestinationSelected: (scIndex) =>
                  setState(() => this.scIndex = scIndex),
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.dashboard_outlined),
                  selectedIcon: Icon(Icons.dashboard),
                  label: "Dashboard",
                ),
                NavigationDestination(
                  icon: Icon(Icons.chat_outlined),
                  selectedIcon: Icon(Icons.chat),
                  label: "Chat",
                ),
                NavigationDestination(
                  icon: Icon(Icons.shopping_cart_outlined),
                  selectedIcon: Icon(Icons.shopping_cart),
                  label: "Shop",
                ),
                NavigationDestination(
                  icon: Icon(Icons.person_outlined),
                  selectedIcon: Icon(Icons.person),
                  label: "Profile",
                ),
              ])),
    );
  }
}
