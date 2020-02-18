import 'package:flutter/material.dart';
import 'package:messenger_lite/login_screen.dart';

class MessagesScreen extends StatelessWidget {
  static final String id = 'messages_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          buildActiveNowText(),
          // SizedBox(height: 10),
          buildActiveUserList(),
          // SizedBox(
          //   height: 20,
          //   child: Container(color: Colors.grey),
          // ),
          buildUserList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {},
      ),
    );
  }

  Expanded buildUserList() {
    return Expanded(
      child: Card(
        
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: activeUsers.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.teal,
                    child: Text(activeUsers[index]['name']
                        .toString()
                        .substring(0, 1)
                        .toUpperCase()),
                  ),
                  title: Text(activeUsers[index]['name']),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  buildActiveUserList() {
    return Card(
      child: Container(
        padding:
            const EdgeInsets.only(top: 8.0, left: 0.0, right: 0.0, bottom: 8),
        height: 85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: activeUsers.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 2.5, vertical: 2.5),
                  child: CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.teal,
                    child: Text(activeUsers[index]['name']
                        .toString()
                        .substring(0, 1)
                        .toUpperCase()),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 8,
                      ),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }

  Padding buildActiveNowText() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Active Now',
            style: TextStyle(color: Colors.grey),
          ),
          Icon(
            Icons.more_vert,
            size: 24,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  var activeUsers = [
    {
      "name": "Isaac",
    },
    {
      "name": "Gloria",
    },
    {
      "name": "Solomon",
    },
    {
      "name": "Irene",
    },
    {
      "name": "Benard",
    },
    {
      "name": "Daniel",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
    {
      "name": "Isaac",
    },
  ];
}
