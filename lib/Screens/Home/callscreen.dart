import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Callscreen extends StatelessWidget {
  Callscreen({super.key});

  var callArr = [
    {
      "name": "Ninisha",
      "img": "assets/images/img2.webp",
      "callTIme": "10 minutes ago",
    },
    {
      "name": "Aayusha",
      "img": "assets/images/img4.jpg",
      "callTIme": "15 minutes ago",
    },
    {
      "name": "Merina",
      "img": "assets/images/img3.jpg",
      "callTime": "10 hours ago",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              SizedBox(width: 20),
              uihelper.customText(text: "Recent", height: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: callArr.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      callArr[index]["img"].toString(),
                    ),
                  ),
                  title: uihelper.customText(
                    text: callArr[index]["name"].toString(),
                    height: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  subtitle: uihelper.customText(
                    text: callArr[index]["callTime"].toString(),
                    height: 16,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Random().nextBool() ? Icons.call : Icons.video_call,
                      color: Color(0XFF00A884),
                    ),
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
