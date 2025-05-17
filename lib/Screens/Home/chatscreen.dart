import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Chatscreen extends StatelessWidget {
  // const Chatscreen({super.key});
  var arr = [
    {
      "images": "assets/images/img4.jpg",
      "name": "Anupama",
      "lastmsg": "Hello my world",
      "time": "05:40 AM",
      "msg": "8",
    },
    {
      "images": "assets/images/img2.webp",
      "name": "Nini",
      "lastmsg": "Hello my world",
      "time": "11:00 AM",
      "msg": "7",
    },
    {
      "images": "assets/images/img3.jpg",
      "name": "Merina",
      "lastmsg": "Hello my world",
      "time": "10:09 PM",
      "msg": "5",
    },
    {
      "images": "assets/images/img4.jpg",
      "name": "Anupama",
      "lastmsg": "Hello my world",
      "time": "05:40 AM",
      "msg": "8",
    },
    {
      "images": "assets/images/img2.webp",
      "name": "Nini",
      "lastmsg": "Hello my world",
      "time": "11:00 AM",
      "msg": "7",
    },
    {
      "images": "assets/images/img3.jpg",
      "name": "Merina",
      "lastmsg": "Hello my world",
      "time": "10:09 PM",
      "msg": "5",
    },
    {
      "images": "assets/images/img4.jpg",
      "name": "Anupama",
      "lastmsg": "Hello my world",
      "time": "05:40 AM",
      "msg": "8",
    },
    {
      "images": "assets/images/img2.webp",
      "name": "Nini",
      "lastmsg": "Hello my world",
      "time": "11:00 AM",
      "msg": "7",
    },
    {
      "images": "assets/images/img3.jpg",
      "name": "Merina",
      "lastmsg": "Hello my world",
      "time": "10:09 PM",
      "msg": "5",
    },
    {
      "images": "assets/images/img4.jpg",
      "name": "Anupama",
      "lastmsg": "Hello my world",
      "time": "05:40 AM",
      "msg": "8",
    },
    {
      "images": "assets/images/img2.webp",
      "name": "Nini",
      "lastmsg": "Hello my world",
      "time": "11:00 AM",
      "msg": "7",
    },
    {
      "images": "assets/images/img3.jpg",
      "name": "Merina",
      "lastmsg": "Hello my world",
      "time": "10:09 PM",
      "msg": "5",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: arr.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage(
                      arr[index]["images"].toString(),
                    ),
                  ),
                  title: uihelper.customText(
                    text: arr[index]["name"].toString(),
                    height: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: uihelper.customText(
                    text: arr[index]["lastmsg"].toString(),
                    height: 13,
                    color: const Color.fromARGB(255, 122, 122, 122),
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      uihelper.customText(
                        text: arr[index]["time"].toString(),
                        height: 13,
                        color: Color(0XFF026500),
                      ),
                      SizedBox(height: 4),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Color.fromARGB(255, 2, 132, 104),
                        child: uihelper.customText(
                          text: arr[index]["msg"].toString(),
                          height: 12,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color.fromARGB(255, 3, 116, 1),
        child: Icon(Icons.message, color: Colors.white, size: 25),
      ),
    );
  }
}
