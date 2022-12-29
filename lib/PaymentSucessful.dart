import 'package:flutter/material.dart';

import 'package:voltage/PaymentFailed.dart';
import 'package:voltage/Trail.dart';

class PaymentSucessfull extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 40, 0.0, 0.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                    MaterialPageRoute(builder: (BuildContext context) =>
                PaymentFailed()),
                );
              },
              icon: Icon(Icons.arrow_back_ios_new),
              color: Color(0xFFA1A7AC),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 220, 0.0, 0.0),
            child: Container(
              child: Center(
                child: Image(image: AssetImage('assets/ThankYou.jpeg'),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20, 0.0, 0.0),
            child: Container(
              child: Center(
                child: Text(
                  'Payment Sucessful',
                  style: TextStyle(
                    color: Color(0XFF108768),
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 20, 0.0, 0.0),
            child: Container(
              child: Center(
                child: Text(
                  'Payment has been done !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA1A7AC),
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 30.0, 0.0),
              child: Container(
                child: SizedBox(
                  height: 55,
                  width: 500,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF108768),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) =>
                            MyApp()),
                      );
                    },
                    child: Text(
                      'Next',
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
    );
  }
}
