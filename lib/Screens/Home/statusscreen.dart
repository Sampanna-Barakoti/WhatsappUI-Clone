// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Statusscreen extends StatelessWidget {
  Statusscreen({super.key});
  var statusContent = [
    {
      "name": "Kshitij Pandit",
      "statusTime": "Yesterday, 10:34 AM",
      "image":
          "https://images.pexels.com/photos/8586713/pexels-photo-8586713.png?cs=srgb&dl=pexels-joon-tae-kim-72545476-8586713.jpg&fm=jpg",
    },
    {
      "name": "Yugesh karki",
      "statusTime": "Today, 11:03 AM",
      "image":
          "https://images.unsplash.com/photo-1580171542477-451bb1c67267?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8a29yZWFuJTIwbWFufGVufDB8fDB8fHww",
    },
    {
      "name": "Yamrit Moktan",
      "statusTime": "Today, 05:32 AM",
      "image":
          "https://media.istockphoto.com/id/1191348064/photo/young-man-look-to-you.jpg?s=612x612&w=0&k=20&c=wAPlsmVwcMLiI0sJ_lyvOz5G2iHRujNtKZg3LJWhwFQ=",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              uihelper.customText(text: "Status", height: 20),
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      "https://cdn.vectorstock.com/i/1000v/43/94/default-avatar-photo-placeholder-icon-grey-vector-38594394.jpg",
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 0, 104, 4),
                      child: Center(
                        child: Icon(Icons.add, color: Colors.white, size: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            title: uihelper.customText(text: "My Status", height: 20),
            subtitle: uihelper.customText(
              text: "Tap to add status update",
              height: 15,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                uihelper.customText(text: "Recent Updates", height: 15),
                Icon(Icons.arrow_drop_down, color: Colors.grey),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: statusContent.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      statusContent[index]['image'].toString(),
                    ),
                  ),
                  title: uihelper.customText(
                    text: statusContent[index]['name'].toString(),
                    height: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: uihelper.customText(
                    text: statusContent[index]['statusTime'].toString(),
                    height: 14,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
