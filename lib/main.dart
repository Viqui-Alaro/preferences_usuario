import 'package:flutter/material.dart';
import 'package:flutter_preferences/screens/home_screen.dart';
import 'package:flutter_preferences/screens/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {



const MyApp ({Key? key}): super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: true,
      initialRoute: HomeScreen.routerName,
      routes: {
        HomeScreen.routerName :(_)=> const HomeScreen(),
        SettingScreen.routerName :(_)=> const SettingScreen(),
      },
      
    );
  }
}
