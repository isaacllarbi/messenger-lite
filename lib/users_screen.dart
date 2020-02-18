import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  static final String id = 'users_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          buildTextInput(),
          SizedBox(height: 15),
          buildActiveNowText(),
          buildActiveUserList(),
          buildWithMessengerText(),
          buildUserList(),
        ],
      ),
    );
  }

  buildTextInput() {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(10, 0, 0, 0),
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(30),
          right: Radius.circular(30),
        ),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.black54),
            hintText: 'Search',
            border: InputBorder.none),
      ),
    );
  }

  buildActiveNowText() {
    return Text(
      'Active Now',
      style: TextStyle(color: Colors.grey),
    );
  }

  buildActiveUserList() {
    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: activeUsers.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.5, vertical: 2.5),
                    child: CircleAvatar(
                      radius: 25,
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
              ),
            ],
          );
        },
      ),
    );
  }

  buildWithMessengerText() {
    return Text(
      'People with Messenger',
      style: TextStyle(
        color: Color.fromARGB(80, 0, 0, 0),
      ),
    );
  }

  buildUserList() {
    return Expanded(
          child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: withMessengerUsers.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 2.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.teal,
                  child: Text(withMessengerUsers[index]['name']
                      .toString()
                      .substring(0, 1)
                      .toUpperCase()),
                ),
                title: Text(withMessengerUsers[index]['name']),
              ),
            );
          },
        ),
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
  ];

  var withMessengerUsers = [
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
