import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Screens/Home/homescreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  // const Profilescreen({super.key});
  TextEditingController nameController = TextEditingController();

  File? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            uihelper.customText(
              text: "Profile Info",
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 30),
            uihelper.customText(
              text: "Please provide your name and optional",
              height: 16,
            ),
            uihelper.customText(text: "profile picture", height: 16),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () => _openBottom(context),
              child:
                  imageFile == null
                      ? CircleAvatar(
                        radius: 70,
                        backgroundColor: Color.fromARGB(255, 217, 217, 217),
                        child: Image.asset(
                          "assets/images/photo-camera 1.png",
                          height: 38,
                          fit: BoxFit.cover,
                        ),
                      )
                      : CircleAvatar(
                        radius: 80,
                        backgroundImage: FileImage(imageFile!),
                      ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 270,
                  child: TextField(
                    keyboardType: TextInputType.name,
                    controller: nameController,
                    decoration: InputDecoration(
                      hintText: "Enter your name here",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 174, 174, 174),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset("assets/images/happy-face 1.png", height: 30),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: uihelper.customButton(
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Homescreen()),
          );
        },
        buttonName: 'Continue',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  SizedBox(width: 6),
                  IconButton(
                    onPressed: () {
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  _pickImage(ImageSource imagesource) async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: imagesource,
        imageQuality: 50,
      );
      if (pickedFile != null) {
        final tempFile = File(pickedFile.path);
        setState(() {
          imageFile = tempFile;
        });
      } else {
        print("No image selected");
      }
    } catch (e) {
      return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Error while picking image"),
          duration: Duration(seconds: 2),
          backgroundColor: const Color.fromARGB(255, 249, 125, 116),
        ),
      );
    }
  }
}
