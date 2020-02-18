import 'package:flutter/material.dart';
import 'package:messenger_lite/login_screen.dart';
import 'package:messenger_lite/messages_screen.dart';
import 'package:messenger_lite/settings_screen.dart';
import 'package:messenger_lite/users_screen.dart';

class HomeScreen extends StatelessWidget {
  static final String id = 'home_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Container(
              child: TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.message,
                        color: Theme.of(context).primaryIconTheme.color),
                  ),
                  Tab(
                    icon: Icon(Icons.people,
                        color: Theme.of(context).primaryIconTheme.color),
                  ),
                  Tab(
                    icon: Icon(Icons.settings,
                        color: Theme.of(context).primaryIconTheme.color),
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              MessagesScreen(),
              UsersScreen(),
              SettingsScreen()
            ],
          ),
        ),
      ),
    );
  }
}
