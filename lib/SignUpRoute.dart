import 'package:flutter/material.dart';
import 'package:voltage/FirstRoute.dart';
import 'package:fluttertoast/fluttertoast.dart';


class SignUpRoute extends StatefulWidget {

  @override
  State<SignUpRoute> createState() => _SignUpRouteState();
}



class _SignUpRouteState extends State<SignUpRoute> {
  bool passToggle = true;
  final _formKey = GlobalKey<FormState>();


  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  final TextEditingController passController = TextEditingController();
  final TextEditingController confirmPassController = TextEditingController();
  late TextEditingController emailController = TextEditingController();
  late TextEditingController nameController = TextEditingController();



  RegExp name_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp pass_valid = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");
  RegExp email_valid =  RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  RegExp confirmpass_valid = RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$");


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



  bool validateEmail(String email){
    String _Email = email.trim();
    if(email_valid.hasMatch(_Email)){
      return true;
    }else{
      return false;
    }
  }



  
  bool validateName(String name){
    String _Name = name.trim();
    if(name_valid.hasMatch(_Name)){
      return true;
    }else{
      return false;
    }
  }
  
  


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Form(
          key: _form,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 60, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Sign up',
                  style: TextStyle(
                      color: Color(0xFF108768),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 6.0, 70.0, 0.0),
              child: Container(
                child: Text(
                  'Create your account',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color(0xFFA1A7AC),
                    fontSize: 17,
                    height: 1.0,
                  ),
                ),
              ),
            ),
               SizedBox(height: 10),
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
              padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: _formKey,
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
                  hintText: 'Name',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                  prefixIcon: Icon(
                    Icons.contacts_rounded,
                    color: Color(0xFFD3D7DA),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter name";
                  }else{
                    //call function to check password
                    bool result = validateName(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter name";
                    }
                  }
                  
                },
                controller: nameController,
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
                    Icons.key_outlined,
                    color: Color(0xFFD3D7DA),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
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
                    Icons.key_outlined,
                    color: Color(0xFFD3D7DA),
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_rounded,
                    color: Color(0xFFD3D7DA),
                  ),
                ),
                //validator: (value) {
                 // if (value!.isEmpty)
                    //return 'Empty';
                 // if (value != passController.text)
                    ///return 'Not Match';
                 // return null;
              //  },
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Comfirm password";
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
                padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
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
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                        onPressed: () {

                          var  email = emailController.text;
                          var name = nameController.text;
                          var pass = passController.text;
                          var confirmPass = confirmPassController.text;

                          if(name.isNotEmpty && email.isNotEmpty && pass.isNotEmpty && confirmPass.isNotEmpty && 
                              validateName(name) && validateEmail(email) && validatePassword(pass) && validateConfirmPassword(confirmPass))
                          {
                            Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => FirstRoute()),);
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
            Padding(
              padding: EdgeInsets.fromLTRB(80.0, 30.0, 45.0, 0.0),
              child: Row(
                children: <Widget>[
                  Text(
                      'Already have an account?',
                      style: TextStyle(
                        color: Color(0xFFA1A7AC),
                      )
                  ),
                  Container(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => FirstRoute()),
                          );
                        },
                        child: Text(
                          'Log in now',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF108768),
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
