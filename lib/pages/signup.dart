import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mechanify/pages/verify.dart';

import 'login.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(40),
        child: SingleChildScrollView(
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
                'Sign Up',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Create an account with your',
                textAlign: TextAlign.center,
              ),
              Text(
                '10 digit mobile number',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 80,
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "Employee Name",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),

              ///SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                    labelText: "Mobile Number",
                    labelStyle: TextStyle(color: Colors.grey)),
              ),
              //SizedBox(height: 5),
              TextField(
                decoration: InputDecoration(
                    labelText: "Location",
                    labelStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.location_on,
                      color: Colors.lightBlue,
                    )),
              ),
              SizedBox(height: 220),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20),
                  shape: StadiumBorder(),
                ),
                onPressed: () {
                  String name = "";
                  String phoneNumber = ""; // Get the entered phone number
                  String location = ""; // Get the entered location

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
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Have an account? ',
                      style: TextStyle(color: Colors.black87),
                    ),
                    TextSpan(
                      text: 'Login',
                      style: const TextStyle(
                        color: Colors.lightBlue,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
