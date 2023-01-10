import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:voltage/CreateProfile.dart';
import 'package:voltage/ForgotPassword.dart';
import 'package:voltage/SignUpRoute.dart';


class FirstRoute extends StatefulWidget {
  @override
  State<FirstRoute> createState() => _FirstRouteState();

}

class _FirstRouteState extends State<FirstRoute> {

  bool passToggle = true;
  final _formKey = GlobalKey<FormState>();

  RegExp pass_valid = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");
  RegExp email_valid =  RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");




  bool validatePassword(String pass){
    String _password = pass.trim();
    if(pass_valid.hasMatch(_password)){
      return true;
    }else{
      return false;
    }
  }

  bool validateEmail(String email){
    String _Email = email.trim();
    if(email_valid.hasMatch(_Email)){
      return true;
    }else{
      return false;
    }
  }


  late TextEditingController emailController = TextEditingController();
  late TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(10.0, 60, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Log In',
                  style: TextStyle(
                      color: Color(0xFF108768),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 70),
            Center(
              child: Container(
                child: Image.asset(
                  'assets/Sign up-cuate.png',
                  fit: BoxFit.fill,
                  width: 250,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
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
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: TextFormField(
                controller: passwordController,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                obscureText: passToggle,
                obscuringCharacter: '*',
                decoration:  InputDecoration(
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
                    Icons.password,
                    color: Color(0xFFD3D7DA),
                  ),
                  suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        passToggle = !passToggle;
                      });
                    },
                    child: Icon(
                        passToggle ?   Icons.visibility_off_outlined : Icons.visibility),

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

              ),
            ),
            Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => ForgotPassword()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(250.0, 10.0, 0.0, 0.0),
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Color(0xFF108768),
                      decoration: TextDecoration.underline,
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
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {

                          var email = emailController.text;
                          var password = passwordController.text;

                          if (email.isNotEmpty && password.isNotEmpty && validatePassword(password) && validateEmail(email))
                          {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (BuildContext context) =>
                                  CreateProfile()),);
                          }
                          else {
                            Fluttertoast.showToast(msg: "Please add all the information",toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.CENTER);
                          }
                        }
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(100.0, 110.0, 45.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text('Dont have an account?',
                      style: TextStyle(
                        color: Color(0xFFA1A7AC),
                      )),
                  Container(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => SignUpRoute()),
                        );
                      },


                      child: Text(
                        '  Sign up',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF108768),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
