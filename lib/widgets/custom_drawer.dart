import 'package:flutter/material.dart';
import 'package:preferences_app/screens/screens.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.pages_outlined),
            title: const Text("Home"),
            onTap: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
          const ListTile(
            leading: Icon(Icons.people_alt_outlined),
            title: Text("People"),
            onTap: null,
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: const Text("Setting"),
            onTap: () {
              Navigator.pushReplacementNamed(context, SettingsScreen.routeName);
            },
          )
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader();

  @override
  Widget build(BuildContext context) {
    return const DrawerHeader(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/menu-img.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(""),
    );
  }
}
