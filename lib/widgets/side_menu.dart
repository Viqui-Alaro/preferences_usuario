import 'package:flutter/material.dart';
import 'package:flutter_preferences/screens/screens.dart';


class SideMenu extends StatelessWidget {

    const SideMenu ({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _DrawerHeader(),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Home'),
            onTap: () => {
               
                Navigator.pushReplacementNamed(context, HomeScreen.routerName)
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('Settings'),
            onTap: () => {
                Navigator.pushReplacementNamed(context, SettingScreen.routerName)
            },
          ),
          ListTile(
            leading: const Icon(Icons.ac_unit),
            title: const Text('People'),
            onTap: () => {
              
            },
          )
        ],
      ),
    );
  }


  
}
class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Container(),
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/menu-img.jpg'),
        fit: BoxFit.cover)
      ),
    );
  }
}

