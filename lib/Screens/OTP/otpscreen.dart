import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/profile/profilescreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Otpscreen extends StatelessWidget {
  // const Otpscreen({super.key});

  String phonenumber;
  Otpscreen({required this.phonenumber});
  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            uihelper.customText(
              text: "Verify your phone numebr",
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            uihelper.customText(
              text: "You have tried to register +977${phonenumber}",
              height: 16,
            ),
            uihelper.customText(
              text: "recently.Wait before requesting sms or a call",
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                uihelper.customText(text: "with your code.", height: 16),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: uihelper.customText(
                    text: "Wrong Number?",
                    height: 16,
                    color: Color(0XFF00A884),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(width: 20),
                uihelper.customContainer(otp1Controller),
                uihelper.customContainer(otp2Controller),
                uihelper.customContainer(otp3Controller),
                uihelper.customContainer(otp4Controller),
                uihelper.customContainer(otp5Controller),
                uihelper.customContainer(otp6Controller),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 40),
            uihelper.customText(
              text: "Didn't received the code?",
              height: 16,
              color: Color(0XFF00A884),
            ),
          ],
        ),
      ),
      floatingActionButton: uihelper.customButton(
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Profilescreen()),
          );
        },
        buttonName: "Verify",
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
