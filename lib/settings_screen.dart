import 'package:flutter/material.dart';
import 'package:messenger_lite/login_screen.dart';

class SettingsScreen extends StatelessWidget {
  static final String id = 'settings_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Center(
                child: CircleAvatar(
                  radius: 50,
                  child: Text(
                    'I',
                    style: TextStyle(fontSize: 40),
                  ),
                  backgroundColor: Colors.pink.withOpacity(0.75),
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Isaac Larbi',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 10),
              SettingItem(
                title: "Active Status",
                icon: Icons.ac_unit,
                subtitle: 'On',
                color: Colors.green,
              ),
              SizedBox(height: 10),
              SettingItem(
                title: "Message Requests",
                icon: Icons.message,
                color: Colors.lightBlueAccent,
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Preferences',
                  style: TextStyle(color: Color.fromARGB(70, 0, 0, 0)),
                ),
              ),
              SettingItem(
                title: "Notifications & Sounds",
                icon: Icons.notifications,
                color: Colors.deepPurple,
                subtitle: 'On',
              ),
              SizedBox(height: 10),
              SettingItem(
                title: 'Manage Storage',
                icon: Icons.storage,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              SettingItem(
                title: 'People',
                icon: Icons.people,
                color: Colors.deepPurple,
              ),
              SizedBox(height: 10),
              SettingItem(
                title: 'App Updates',
                icon: Icons.file_download,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
               Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Account & Support',
                  style: TextStyle(color: Color.fromARGB(70, 0, 0, 0)),
                ),
              ),
              SettingItem(
                title: 'Switch Account',
                icon: Icons.switch_camera,
                color: Colors.deepPurple,
              ),
              SizedBox(height: 10),
              SettingItem(title: 'Account Settings', icon: Icons.settings),
              SizedBox(height: 10),
              SettingItem(
                title: 'Report a Problem',
                icon: Icons.warning,
                color: Colors.orangeAccent,
              ),
              SizedBox(height: 10),
              SettingItem(
                title: 'Help',
                icon: Icons.help,
                color: Colors.lightBlueAccent,
              ),
              SizedBox(height: 10),
              SettingItem(title: 'Legal & Policies', icon: Icons.note),
              SizedBox(height: 10),
            ],
          ),
        ));
  }
}

class SettingItem extends StatelessWidget {
  final String title, subtitle;
  final IconData icon;
  final Color color;

  const SettingItem({
    Key key,
    @required this.title,
    this.subtitle = '',
    this.color = const Color.fromARGB(70, 0, 0, 0),
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: color,
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      subtitle: subtitle.length == 0
          ? null
          : Text(
              subtitle,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Color.fromARGB(70, 0, 0, 0),
              ),
            ),
    );
  }
}
