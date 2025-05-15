import 'package:flutter/material.dart';

class uihelper {
  static customButton({
    required VoidCallback callBack,
    required String buttonName,
  }) {
    return SizedBox(
      height: 45,
      width: 320,
      child: ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),

        child: Text(
          buttonName,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  static customText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontWeight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0XFF5E5E5E),
        fontWeight: fontWeight,
      ),
    );
  }

  static customContainer(TextEditingController controller) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(255, 221, 221, 221),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }
}
