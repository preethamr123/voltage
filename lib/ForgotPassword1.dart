
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:otp_timer_button/otp_timer_button.dart';
import 'package:voltage/ResetPassword.dart';

class ForgotPassword1 extends StatefulWidget {

  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  bool isButtonActive = true;
 late TextEditingController controller;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 60, 0.0, 0.0),
              child: Container(
                child: const Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Color(0xFF108768),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 50.0, 0.0),
                child: Container(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.teal),
                      children: [
                        TextSpan(
                            text: 'A 6-digit verification code was sent to your email',
                            style: TextStyle(color: Color(0xFFA1A7AC),fontSize: 18,height: 1.2),
                        ),
                        TextSpan(
                          text: ' admin@gmail.com',
                          style: TextStyle(color: Color(0xFF108768),fontSize: 17,height: 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                child: Image(
                  height: 300,
                  width: 300,
                  image: AssetImage(
                    'assets/Enter OTP-bro.png',
                  ),
                ),
              ),
            ),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFFF3F5F7),
              showFieldAsBox: true,
              fieldWidth: 50,
              fillColor: Color(0xFFF3F5F7),
              filled: true,
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                child: Text(
                  'Didnt recive code ?',
                  style: TextStyle(
                    color: Color(0xFFA1A7AC),
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(140.0, 2.0, 0.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'Resend code',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  OtpTimerButton(
                    onPressed: () {},
                    text: Text('Resend OTP'),
                    duration: 60,
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
                child: Container(
                  child: SizedBox(
                    height: 55,
                    width: 600,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF108768),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed:  () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) =>
                              ResetPassword()),
                        );
                      },
                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
