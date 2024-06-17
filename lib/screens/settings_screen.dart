import 'package:flutter/material.dart';
import 'package:preferences_app/providers/preferences_provider.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/widgtes.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = 'settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  // bool isDarkMode = false;
  // int gender = 1;
  // String name = 'Camilo';

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<PreferencesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      drawer: const CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Ajustes",
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const Divider(),
              SwitchListTile(
                value: Preferences.isDarkMode,
                title: const Text("DarkMode"),
                onChanged: (value) {
                  Preferences.isDarkMode = value;
                  value ? provider.setDarkMode() : provider.setLightMode();
                  setState(() {});
                },
              ),
              const Divider(),
              RadioListTile<int>(
                title: const Text("Masculino"),
                value: 1,
                groupValue: Preferences.gender,
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                },
              ),
              RadioListTile<int>(
                title: const Text("Femenino"),
                value: 2,
                groupValue: Preferences.gender,
                onChanged: (value) {
                  Preferences.gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onChanged: (value) {
                    Preferences.name = value;
                    setState(() {});
                  },
                  initialValue: Preferences.name,
                  decoration: const InputDecoration(
                    labelText: 'Nombre',
                    helperText: 'Nombre del usuario',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
