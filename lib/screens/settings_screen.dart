


import 'package:flutter/material.dart';
import 'package:flutter_preferences/widgets/side_menu.dart';


class SettingScreen extends StatelessWidget {

  static const String routerName = 'Settings';

  const SettingScreen ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: const Center(
        child: Text('Hola Mundo'),
     ),
   );
  }
}