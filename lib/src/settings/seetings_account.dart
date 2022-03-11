import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:socialnetwork/src/profile/profile.dart';
import 'package:socialnetwork/src/profile/profile_image.dart';
import 'package:socialnetwork/src/profile/profile_music_list.dart';
import 'package:socialnetwork/src/settings/settings.dart';

class settingsAccount extends StatefulWidget {
  @override
  _settingsAccountState createState() => _settingsAccountState();
}

class _settingsAccountState extends State<settingsAccount> {
  final _controller = TextEditingController();

  @override
  void initState() {
    const storage = FlutterSecureStorage();
    setUpData(storage);
  }

  void setUpData(FlutterSecureStorage storage) async {
    _controller.text = (await storage.read(key: "bio"))!;
  }

  @override
  Widget build(BuildContext context) {
    const storage = FlutterSecureStorage();

    void saveSettings() async {
      await storage.write(key: "bio", value: _controller.text);
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff13334C),
        title: Transform.translate(
          offset: Offset(-70, 0),
          child: Text(
            'Mon compte',
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
                  leading: Text(
                    "Bio : ",
                    style: TextStyle(fontSize: 20),
                  ),
                  title: Transform.translate(
                    offset: Offset(-16, 0),
                    child: TextField(
                      controller: _controller,
                    ),
                  ),
                  trailing: Icon(
                    Icons.edit,
                    color: Colors.black,
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 500),
                Column(
                  children: [
                    // ignore: deprecated_member_use
                    RaisedButton(
                      child: Text("Enregistrer"),
                      onPressed: () => saveSettings(),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
