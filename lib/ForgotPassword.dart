import 'package:flutter/material.dart';
import 'package:voltage/ForgotPassword1.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPassword extends StatelessWidget {

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  late TextEditingController emailController = TextEditingController();

  RegExp email_valid =  RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

  bool validateEmail(String email){
    String _Email = email.trim();
    if(email_valid.hasMatch(_Email)){
      return true;
    }else{
      return false;
    }
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
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                'assets/Forgot password-cuate.png',
                fit: BoxFit.cover,
                width: 230,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _form,
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
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter email";
                  }else{
                    bool result = validateEmail(value);
                    if(result){
                      return null;
                    }else{
                      return "Enter proper Email id";
                    }
                  }
                },
                controller: emailController,
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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

                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onPressed: () {

                        var  email = emailController.text;
                        if(email.isNotEmpty && validateEmail(email) )
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (BuildContext context) =>
                                  ForgotPassword1()),);
                              }
                        else{
                          Fluttertoast.showToast(msg: "Please add all the information",toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.CENTER);
                        }
                        }
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
