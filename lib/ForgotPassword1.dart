import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:voltage/ResetPassword.dart';
import 'package:flutter/services.dart';

class ForgotPassword1 extends StatefulWidget {
  @override
  State<ForgotPassword1> createState() => _ForgotPassword1State();
}

class _ForgotPassword1State extends State<ForgotPassword1> {
  bool wait = false;
  bool isButtonActive = false;
  int start = 60;
  String buttonName = "Resend code";

  String _code = 'value';

  /* verify() {
    setState(() {
      isButtonActive = true;
    });
  }*/

  @override
  void initState() {
    startTimer();
    super.initState();
  }

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
                          text:
                          'A 6-digit verification code was sent to your email',
                          style: TextStyle(
                              color: Color(0xFFA1A7AC),
                              fontSize: 18,
                              height: 1.2),
                        ),
                        TextSpan(
                          text: ' admin@gmail.com',
                          style: TextStyle(
                              color: Color(0xFF108768),
                              fontSize: 17,
                              height: 1),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                'assets/Enter OTP-bro.png',
                fit: BoxFit.cover,
                width: 230,
              ),
            ),
            SizedBox(height: 50),
            Container(
              child: OtpTextField(
                onSubmit: (String length) {
                  setState(() {
                    if (length.isEmpty) {
                      isButtonActive = false;
                    }else{
                      isButtonActive=true;
                    }
                  });
                },
                onCodeChanged: (String length) {
                  setState(() {
                    if (length == 6) {
                      isButtonActive = true;
                    } else {
                      isButtonActive = false;
                    }
                  });
                  },
                numberOfFields: 6,
                borderColor: Color(0xFFF3F5F7),
                showFieldAsBox: true,
                fieldWidth: 50,
                fillColor: Color(0xFFF3F5F7),
                filled: true,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: Container(
                child: Text(
                  'Didnt recive code ?',
                  style: TextStyle(fontSize: 15, color: Color(0xFFA1A7AC)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(130.0, 0.0, 45.0, 0.0),
              child: Row(
                children: <Widget>[
                  Container(
                      child: InkWell(
                        onTap: wait
                            ? null
                            : () {
                          setState(() {
                            startTimer();
                            start = 60;
                            wait = true;
                            buttonName = "Resend code";
                          });
                        },
                        child: Text(
                          buttonName,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )),
                  Container(
                    child: Text(" (00:$start)",
                        style:
                        TextStyle(fontSize: 16, color: Colors.pinkAccent)),
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
                      onPressed: isButtonActive
                          ? () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ResetPassword()),
                        );
                      } : null,
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

  void startTimer() {
    const onSec = Duration(seconds: 1);
    Timer timer = Timer.periodic(onSec, (timer) {
      if (start > 0) {
        setState(() {
          start--;
        });
      } else {
        setState(() {
          timer.cancel();
          wait = false;
        });
      }
    });
  }
}
