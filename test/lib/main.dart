// Creating a WhatsApp UI Design
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(
                  text: 'Chats',
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  text: 'Status',
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: 'Calls',
                  icon: Icon(Icons.call),
                ),
              ],
            ),
            title: Text(
              "YousufWhatsApp",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Icon(Icons.search),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Icon(Icons.more_vert),
              ),
            ],
            backgroundColor: const Color.fromARGB(255, 9, 133, 73),
          ),
          body: TabBarView(
            children: [
              // Chats tab
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://saiuniversity.edu.in/wp-content/uploads/2021/02/default-img.jpg'),
                    ),
                    title: Text("Mark Zuck"),
                    subtitle: Text("10 New Messages"),
                    trailing: Icon(Icons.chat),
                    tileColor: Colors.black12,
                  );
                },
              ),
              // Status tab
              ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        // Image(image: AssetImage("assets/myback.jpg")),
                        Image(image: AssetImage("assets/myback.jpg")),
                        Text("Mark Zuck's status")
                      ],
                    ),
                  );
                },
              ),
              // Calls tab
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://saiuniversity.edu.in/wp-content/uploads/2021/02/default-img.jpg'),
                    ),
                    title: Text("Mark Zuck"),
                    subtitle: Text("Missed call"),
                    trailing: Icon(Icons.call),
                    tileColor: Colors.black12,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
