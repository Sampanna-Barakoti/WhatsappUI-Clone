import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/login/loginscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/boarding.png"),
            SizedBox(height: 20),
            uihelper.customText(
              text: "Welcome to Whatsapp",
              height: 20,
              color: Color(0XFF000000),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper.customText(text: 'Read out ', height: 14),
                uihelper.customText(
                  text: 'privacy policy.',
                  height: 14,
                  color: Color(0XFF0C42A6),
                ),
                uihelper.customText(
                  text: 'Tap "Agree to Continue"',
                  height: 14,
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper.customText(text: 'to accept the', height: 14),
                uihelper.customText(
                  text: 'Term & Conditions',
                  height: 14,
                  color: Color(0XFF0C42A6),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: uihelper.customButton(
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Loginscreen()),
          );
        },
        buttonName: 'Agree to Continue',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
