import 'package:flutter/material.dart';
import 'package:voltage/PaymentFailed.dart';

class Survey extends StatelessWidget {
  const Survey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            color: Color(0xFF108768),
            child: Text(
                'Lets impact the word with power',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 120),
          Center(
            child: Container(
              child: Text(
                'Tecnology is very simple tool to interlock your decision of ownership beware of everything',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  height: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 180.0, 20.0, 0.0),
              child: Container(
                child: SizedBox(
                  height: 55,
                  width: 500,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF108768),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) =>
                            PaymentFailed()),
                      );
                    },
                    child: Text(
                      'Survey',
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
