import 'package:flutter/material.dart';
import 'package:voltage/CreateProfile.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPassword extends StatelessWidget {

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();

  RegExp pass_valid = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");
  RegExp confirmpass_valid = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");

  final _formKey = GlobalKey<FormState>();

  bool validatePassword(String pass){
    String _password = pass.trim();
    if(pass_valid.hasMatch(_password)){
      return true;
    }else{
      return false;
    }
  }

  bool validateConfirmPassword(String pass){
    String _confirmpassword = pass.trim();
    if(confirmpass_valid.hasMatch(_confirmpassword)){
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
              padding: const EdgeInsets.fromLTRB(20.0, 60, 0.0, 0.0),
              child: Container(
                child: const Text(
                  'Reset Password',
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
                          text: 'Lorem Ipsum is simply dummy text and typesetting Industry',
                          style: TextStyle(color: Color(0xFFA1A7AC),fontSize: 20,height: 1.2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Image.asset(
                'assets/Reset password-pana.png',
                fit: BoxFit.cover,
                width: 230,
              ),
            ),
            SizedBox(height: 60),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                  prefixIcon: Icon(
                    Icons.key,
                    color: Color(0xFFD3D7DA),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFFD3D7DA),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter password";
                  }else{
                    //call function to check password
                    bool result = validatePassword(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return " min 8 digits,1 uppercase,i lower";
                    }
                  }
                },
                controller: passController,
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
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
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                  prefixIcon: Icon(
                    Icons.key,
                    color: Color(0xFFD3D7DA),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Color(0xFFD3D7DA),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Confirm password";
                  }else{
                    bool result = validateConfirmPassword(value);
                    if(value!=passController.text){
                      return "password do not match";
                    }else{
                      return null;
                    }
                  }
                },
                controller: confirmPassController,
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

                      child: Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      onPressed:  () {

                        var pass = passController.text;
                        var confirmPass = confirmPassController.text;

                        if(pass.isNotEmpty && confirmPass.isNotEmpty && validatePassword(pass) && validateConfirmPassword(confirmPass)){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) =>
                              CreateProfile()),);
                        }
                        else
                          {
                            Fluttertoast.showToast(msg: "Please add all the information",toastLength: Toast.LENGTH_LONG, gravity:
                                ToastGravity.CENTER);
                          }
                      }
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
