import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/Home/callscreen.dart';
import 'package:whatsapp/Screens/Home/camerascreen.dart';
import 'package:whatsapp/Screens/Home/chatscreen.dart';
import 'package:whatsapp/Screens/Home/statusscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 80,
          title: uihelper.customText(
            text: "Whatsapp",
            height: 20,
            color: Colors.white,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(icon: Icon(Icons.search), onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            Camerascreen(),
            Chatscreen(),
            Statusscreen(),
            Callscreen(),
          ],
        ),
      ),
    );
  }
}
