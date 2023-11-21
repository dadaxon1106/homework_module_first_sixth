import 'package:flutter/material.dart';

class NavigationRailPage extends StatefulWidget {
  const NavigationRailPage({super.key});
  @override
  State<NavigationRailPage> createState() => _NavigationRailPageState();
}

class _NavigationRailPageState extends State<NavigationRailPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RAIL NAVIGATION"),
      ),
      body: NavigationRail(
        extended: true,
        destinations: const [
          NavigationRailDestination(
            icon: Icon(Icons.home),
            label: Text("Home Page"),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.person),
            label: Text("Profile Page"),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.home),
            label: Text("Settings Page"),
          ),
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (value) {
          currentIndex = value;
          setState(() {});
        },
      ),
    );
  }
}
