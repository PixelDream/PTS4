import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String dropdownValue = 'Français';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff13334C),
        title: Transform.translate(
          offset: Offset(-70, 0),
          child: Text(
            'Paramètres',
            style: TextStyle(fontSize: 23),
          ),
        ),
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
          brightness: Brightness.dark,
          primaryColor: Colors.purple,
        ),
        child: DefaultTextStyle(
          style: TextStyle(
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 10),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Notifications'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.privacy_tip_rounded),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Confidentialité'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Sécurité'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.account_box_rounded),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Compte'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.language),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Langues'),
                  ),
                  subtitle: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text(dropdownValue),
                  ),
                  trailing: DropdownButton<String>(
                    value: dropdownValue,
                    iconEnabledColor: Colors.black,
                    elevation: 16,
                    underline: Container(
                      color: Colors.black,
                      height: 1,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: <String>['Français', 'Anglais', 'Espagnol'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Aide'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.info),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('A propos'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.palette),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: Text('Themes'),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: 120,
                ),
                ListTile(
                  title: Text(
                    "Déconnexion",
                    style: TextStyle(color: Color(0xffFD5F00)),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
