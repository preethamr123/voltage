import 'package:flutter/material.dart';
import 'package:voltage/CreateProfile.dart';
import 'package:voltage/PaymentSucessful.dart';

class PaymentFailed extends StatelessWidget {
  const PaymentFailed({Key? key}) : super(key: key);

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
                    CreateProfile()),
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
                child: MaterialButton(
                  onPressed: () {},
                  shape: CircleBorder(),
                  color: Color(0XFFFCD9D9),
                  padding: EdgeInsets.all(20),
                  child: Icon(
                    Icons.close_outlined,
                    size: 45,
                    color: Color(0XFFFF4E4E),
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
                  'Payment Failed',
                  style: TextStyle(
                    color: Color(0XFFF67A7A),
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
                  'You can retrive the payment below to continue this',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFA1A7AC),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
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
                            PaymentSucessfull()),
                      );
                    },
                    child: Text(
                      'Try again',
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
