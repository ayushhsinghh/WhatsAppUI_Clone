import 'package:flutter/material.dart';

import 'Pages/Calls_Screen.dart';
import 'Pages/Camera_Screen.dart';
import 'Pages/Chats_Screen.dart';
import 'Pages/Status_Screan.dart';

class WhatsAppHome extends StatefulWidget {
  WhatsAppHome({Key key}) : super(key: key);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Icon(Icons.more_vert),
          )
        ],
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          CameraPage(),
          ChatsPage(),
          StatusPage(),
          CallsPage()
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {
            print("Pressed Floating Action Button");
          }),
    );
  }
}
