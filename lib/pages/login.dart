import 'package:flutter/material.dart';
import 'package:mechanify/pages/verify.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          children: [
            Image.asset(
              'assets/logo_blue.png',
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Hello!',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              textAlign: TextAlign.left,
            ),
            Text(
              'welcome back',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Signin to your account by adding',
              textAlign: TextAlign.start,
            ),
            Text(
              'your mobile number',
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 80,
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Mobile Number",
                  labelStyle: TextStyle(color: Colors.grey)),
            ),
            //SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                  labelText: "Location",
                  labelStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(
                    Icons.location_on,
                    color: Colors.lightBlue,
                  )),
            ),
            SizedBox(height: 240),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20),
                shape: StadiumBorder(),
              ),
              onPressed: () {
                String phoneNumber = ""; // Get the entered phone number
                String location = ""; // Get the entered locatio

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileVerificationPage(
                      phoneNumber: phoneNumber,
                    ),
                  ),
                );
              },
              child: Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
