import 'package:flutter/material.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgtes.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('isDarkMode: ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Gender: ${Preferences.gender}'),
            const Divider(),
            Text('Name: ${Preferences.name}'),
            const Divider(),
          ],
        ),
      ),
    );
  }
}
