import 'package:flutter/material.dart';
import 'package:whatsapp/Screens/OTP/otpscreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Loginscreen extends StatefulWidget {
  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  // const Loginscreen({super.key});
  TextEditingController phoneController = TextEditingController();

  String selectedCountry = 'Nepal';
  List<String> countryList = ["India", "Japan", "Bhutan", "china", "Nepal"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80),
            uihelper.customText(
              text: 'Enter your Phone number',
              height: 20,
              color: Color(0XFF00A884),
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: 20),
            uihelper.customText(
              text: 'Whatsapp will need to verify your',
              height: 16,
            ),
            uihelper.customText(
              text: 'number.Carrier charges may apply.',
              height: 16,
            ),
            uihelper.customText(
              text: 'Whats my number?',
              height: 16,
              color: Color(0XFF00A884),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: DropdownButtonFormField(
                items:
                    countryList.map((String country) {
                      return DropdownMenuItem(
                        child: Text(country.toString()),
                        value: country,
                      );
                    }).toList(),
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value!;
                  });
                },
                value: selectedCountry,
                decoration: InputDecoration(
                  // enabledBorder: UnderlineInputBorder(
                  //   borderSide: BorderSide(color: Color(0XFF00A884)),
                  // ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884)),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 32,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+977",
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
                SizedBox(
                  width: 250,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: phoneController,
                    decoration: InputDecoration(
                      // enabledBorder: UnderlineInputBorder(
                      //   borderSide: BorderSide(color: Color(0XFF00A884)),
                      // ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0XFF00A884)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: uihelper.customButton(
        callBack: () {
          Login(context, phoneController.text.toString());
        },
        buttonName: 'Next',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Login(BuildContext context, String phoneNumber) {
  if (phoneNumber.isEmpty || phoneNumber == "") {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Enter your phone number"),
        backgroundColor: const Color.fromARGB(255, 244, 118, 109),
      ),
    );
  } else {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Otpscreen(phonenumber: phoneNumber),
      ),
    );
  }
}
