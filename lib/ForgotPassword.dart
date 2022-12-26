import 'package:flutter/material.dart';
import 'package:voltage/ForgotPassword1.dart';

class ForgotPassword extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 60, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Color(0xFF108768),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 5.0, 70.0, 0.0),
              child: Container(
                child: Text(
                    'Lorem lpsum is simply dummy Text and type setting industry',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFA1A7AC),
                    fontSize: 17,
                    height: 1.0,
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
                    'assets/Forgot password-cuate.png',
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
              child: TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFFF3F5F7), width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                    BorderSide(color: Color(0xFFF3F5F7), width: 2.0),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                  ),
                  fillColor: Color(0xFFF3F5F7),
                  filled: true,
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFFD3D7DA),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) =>
                              ForgotPassword1()),
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
