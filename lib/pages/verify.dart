import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileVerificationPage extends StatelessWidget {
  final String phoneNumber; // Pass the phone number to this widget

  MobileVerificationPage({required this.phoneNumber});

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
            Text(
              'Verify',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              textAlign: TextAlign.left,
            ),
            Text(
              'your number',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30),
              textAlign: TextAlign.left,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Enter the OTP that send to',
              textAlign: TextAlign.start,
            ),
            Text(
              'your mobile number Change Number?',
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              'Enter OTP',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            Form(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                ),
                SizedBox(
                  height: 68,
                  width: 64,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(1),
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                  ),
                )
              ],
            )),
            SizedBox(
              height: 8,
            ),
            Text(
              'Didn’t receive OTP? Resend OTP',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(height: 240),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20),
                shape: StadiumBorder(),
              ),
              onPressed: () {
                _launchDialer(phoneNumber);
              },
              child: Text(
                "Verify and Continue",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'By Clicking , I accept the Terms & conditions & Privacy Policy',
              style: TextStyle(color: Colors.grey, fontSize: 10),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  void _launchDialer(String phoneNumber) async {
    final Uri phoneLaunchUri = Uri(scheme: 'tel', path: phoneNumber);

    if (await canLaunchUrl(phoneLaunchUri)) {
      await launchUrl(phoneLaunchUri);
    } else {
      throw 'Could not launch $phoneLaunchUri';
    }
  }
}
