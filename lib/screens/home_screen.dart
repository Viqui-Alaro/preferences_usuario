

import 'package:flutter/material.dart';
import 'package:flutter_preferences/widgets/widgets.dart';


class HomeScreen extends StatelessWidget {

  static const String routerName = 'Home';

  const HomeScreen ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        children: const[
          Text('Darkmode: '),
          Divider(),
          Text('Género: '),
          Divider(),
          Text('Nombre de usuario: '),
          Divider(),

        ],
      )
   );
  }
}