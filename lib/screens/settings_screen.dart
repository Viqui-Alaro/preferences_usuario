


import 'package:flutter/material.dart';
import 'package:flutter_preferences/widgets/side_menu.dart';


class SettingScreen extends StatefulWidget {

  static const String routerName = 'Settings';

  const SettingScreen ({Key? key}): super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {

  bool isDarkmode = false;
  Object gender = '1';
  String name= 'Maribel';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Ajustes',style: TextStyle(fontSize: 45,fontWeight: FontWeight.w300) ),
              const Divider(),
              SwitchListTile.adaptive(
                value: isDarkmode, 
                title: const Text('Darkmode'),
                onChanged: (value){
                    isDarkmode = value;
                    setState(() { });
              }),
              Divider(),
              RadioListTile(
                value: 1,
                groupValue: gender, 
                title: const Text('Masculino'), 
                onChanged: (value){
                  gender = value ?? 1;
                    setState(() { });
                }),
                Divider(),
              RadioListTile(
                value: 2,
                groupValue: gender, 
                title: const Text('Femenino'), 
                onChanged: (value){
                  gender = value ?? 2;
                  setState(() { });
                }),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    initialValue: 'Viqui',
                    onChanged: (value){
                      name= value;
                      setState(() { }); 
                    },
                    decoration: const InputDecoration(
                      labelText: 'Nombre',
                      helperText: 'Nombre de usuario'
                    ),
                  ),
                )
              

            ],
          ),
        ),
      )
   );
  }
}