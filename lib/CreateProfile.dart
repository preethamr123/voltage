import 'package:flutter/material.dart';
import 'package:voltage/PaymentFailed.dart';
import 'package:voltage/Survey.dart';
import 'package:fluttertoast/fluttertoast.dart';



class CreateProfile extends StatefulWidget {
  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  int selectedValue = 1;
  var _counterText = "";
  var _counterText1 = "";
  var _counterText2 = "";
  var _counterText3 = "";
  var _counterText4 = "";

  late TextEditingController emailController = TextEditingController();
  late TextEditingController nameController = TextEditingController();
  late TextEditingController fatherController = TextEditingController();
  late TextEditingController mobileController = TextEditingController();
  late TextEditingController ageController = TextEditingController();
  late TextEditingController qualificationController = TextEditingController();
  late TextEditingController currentController = TextEditingController();
  late TextEditingController addressController = TextEditingController();
  late TextEditingController talukController = TextEditingController();
  late TextEditingController villageController = TextEditingController();
  late TextEditingController computerController = TextEditingController();
  late TextEditingController specialController = TextEditingController();
  late TextEditingController businessController = TextEditingController();
  late TextEditingController agricultureController = TextEditingController();
  late TextEditingController marketingController = TextEditingController();
  late TextEditingController stateController = TextEditingController();
  late TextEditingController DistrictController = TextEditingController();
  late TextEditingController CategoryController = TextEditingController();
  late TextEditingController subCategoryController = TextEditingController();


  RegExp email_valid =  RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_'{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  RegExp name_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp fathername_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp mobilenumber_valid = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');

  RegExp qualification_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp current_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp address_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp taluk_valid =RegExp(r'^[a-z A-Z]+$');
  RegExp village_valid =RegExp(r'^[a-z A-Z]+$');

  bool validateMobileNumber( String mobilenumber){
    String _MobileNumber = mobilenumber.trim();
    if(mobilenumber_valid.hasMatch(_MobileNumber)){
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

  bool validateVillage(String village){
    String _Village = village.trim();
    if(village_valid.hasMatch(_Village)){
      return true;
    }else{
      return false;
    }
  }

  bool validateTaluk(String taluk){
    String _Taluk = taluk.trim();
    if(taluk_valid.hasMatch(_Taluk)){
      return true;
    }else{
      return false;
    }
  }

  bool validateAddress(String address){
    String _Address = address.trim();
    if(address_valid.hasMatch(_Address)){
      return true;
    }else{
      return false;
    }
  }



  bool validateQualification(String qualification){
    String _Qualification = qualification.trim();
    if(qualification_valid.hasMatch(_Qualification)){
      return true;
    }else{
      return false;
    }
  }

  bool validateCurrent(String current){
    String _Current = current.trim();
    if(current_valid.hasMatch(_Current)){
      return true;
    }else{
      return false;
    }
  }


  bool validateFatherName(String fathername){
    String _FatherName = fathername.trim();
    if(fathername_valid.hasMatch(_FatherName)){
      return true;
    }else{
      return false;
    }
  }




  //String validateMobile(String value) {
    //String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    //RegExp regExp = new RegExp(pattern);
    //if (value.length == 0) {
      //return 'Please enter mobile number';
    //}
    //else if (!regExp.hasMatch(value)) {
      //return 'Please enter valid mobile number';
    //}
  //}




  final GlobalKey<FormState> _form = GlobalKey<FormState>();



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
                  'Create Profile',
                  style: TextStyle(
                      color: Color(0xFF108768),
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 20.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   Raghav Juyal',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Fathers Name',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   Raghav Juyal',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter fathers name";
                  }else{
                    //call function to check password
                    bool result = validateFatherName(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter fathers name";
                    }
                  }
                },
                controller: fatherController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Mobile number',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   98******98',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter phone number";
                  }else{
                    //call function to check password
                    bool result = validateMobileNumber(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter phone number";
                    }
                  }
                },
                controller: mobileController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Email Id',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   example@gmail.com',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
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
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Age',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   25',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter age";
                  }else if(value.length>1){
                    return null;
                  }
                },
                controller: ageController,
              ),
            ),
            Padding(
              padding:  EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Qualification',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   BE Mechanical Engineering',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter qualification";
                  }else{
                    //call function to check password
                    bool result = validateQualification(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter qualification";
                    }
                  }
                },
                controller: qualificationController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Current Job/Specific Job',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   Supervisor',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter current job";
                  }else{
                    //call function to check password
                    bool result = validateCurrent(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter current job";
                    }
                  }
                },
                controller: currentController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Computer Skills',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                onChanged: (value){
                  setState(() {
                    _counterText1 = (0 + value.length).toString();
                  });
                },
                maxLength: 250,
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Computer Skills',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                  counterStyle:  TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                  counterText: "($_counterText1/250 characters)"
                ),
                controller: computerController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Special Occupation',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                onChanged: (value){
                  setState(() {
                    _counterText = (0 + value.length).toString();
                  });
                },
                maxLength: 250,
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Special Occupation',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                    counterStyle:  TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    counterText: "($_counterText/250 characters)"
                ),
                controller: specialController,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Business Experience',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                onChanged: (value){
                  setState(() {
                    _counterText2 = (0 + value.length).toString();
                  });
                },
                maxLength: 250,
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Business Experience',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                    counterStyle:  TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    counterText: "($_counterText2/250 characters)"
                ),
                controller: businessController,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Agriculture Experience',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                onChanged: (value){
                  setState(() {
                    _counterText3 = (0 + value.length).toString();
                  });
                },
                maxLength: 250,
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Agriculture Experience',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                    counterStyle:  TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    counterText: "($_counterText3/250 characters)"
                ),
                controller: agricultureController,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Marketing Experience',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                onChanged: (value){
                  setState(() {
                    _counterText4 = (0 + value.length).toString();
                  });
                },
                maxLength: 250,
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Supervisior',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                    counterStyle:  TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                    counterText: "($_counterText4/250 characters)"
                ),
                controller: marketingController,
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   Door no,Address Line 1',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter  Adress";
                  }else{
                    //call function to check password
                    bool result = validateAddress(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter Address";
                    }
                  }
                },
                controller: addressController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'States',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: Container(
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
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
                    hintText: '   State',
                    hintStyle: TextStyle(
                      color: Color(0xFFA1A7AC),
                    ),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text("Karnataka"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Kerala"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("tamil naadu"),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text("uttar pradesh"),
                      value: 4,
                    ),
                  ],
                  onChanged: (value){
                  },
                ),
              ),
            ), Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Districts',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: Container(
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
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
                    hintText: '   Districts',
                    hintStyle: TextStyle(
                      color: Color(0xFFA1A7AC),
                    ),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text("Bangalore"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Hassan"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                        child: Text("Tumkur"),
                        value: 3,
                    ),
                    DropdownMenuItem(
                        child: Text("Chikamagaluru"),
                      value: 4,
                    ),
                  ],
                  onChanged: (value){
                    },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Village Name',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   Village Name',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter village name";
                  }else{
                    //call function to check password
                    bool result = validateVillage(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter village name";
                    }
                  }
                },
                controller: villageController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
              child: Container(
                child: Text(
                  'Taluks',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20.0, 8.0, 20.0, 0.0),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
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
                  hintText: '   Taluks',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Please enter Taluk name name";
                  }else{
                    //call function to check password
                    bool result = validateTaluk(value);
                    if(result){
                      // create account event
                      return null;
                    }else{
                      return "Please enter Taluks name";
                    }
                  }
                },
                controller: talukController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: Container(
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
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
                    hintText: '   Category',
                    hintStyle: TextStyle(
                      color: Color(0xFFA1A7AC),
                    ),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text("Producer"),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Entrepreneur"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("Professional"),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text("Unemployed"),
                      value: 4,
                    ),
                  ],
                  onChanged: (value){
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
              child: Container(
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
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
                    hintText: '   Sub Category',
                    hintStyle: TextStyle(
                      color: Color(0xFFA1A7AC),
                    ),
                  ),
                  items: <DropdownMenuItem>[
                    DropdownMenuItem(
                      child: Text("Small scale industry "),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("Medium scale industry"),
                      value: 2,
                    ),
                    DropdownMenuItem(
                      child: Text("Large scale industry"),
                      value: 3,
                    ),
                    DropdownMenuItem(
                      child: Text("Heavy scale industry"),
                      value: 4,
                    ),
                    DropdownMenuItem(
                      child: Text("Former"),
                      value: 4,
                    ),
                  ],
                  onChanged: (value){
                  },
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

                        var name = nameController.text;
                        var father = fatherController.text;
                        var email = emailController.text;
                        var mobile = mobileController.text;
                        var age = ageController.text;
                        var qualification = qualificationController.text;
                        var current = currentController.text;
                        var computer = computerController.text;
                        var special = specialController.text;
                        var business = businessController.text;
                        var agriculture = agricultureController.text;
                        var marketing = marketingController.text;
                        var address = addressController.text;
                        var village = villageController.text;
                        var taluk = talukController.text;
                        
                        if(name.isNotEmpty && father.isNotEmpty && email.isNotEmpty && mobile.isNotEmpty && age.isNotEmpty
                        && qualification.isNotEmpty && current.isNotEmpty && computer.isNotEmpty && special.isNotEmpty
                        && business.isNotEmpty && agriculture.isNotEmpty && marketing.isNotEmpty && address.isNotEmpty
                        && village.isNotEmpty && taluk.isNotEmpty && validateName(name) && validateFatherName(father) 
                        && validateMobileNumber(mobile) && validateEmail(email) && validateQualification(qualification) &&
                        validateCurrent(current) && validateAddress(address) && validateVillage(village) && validateTaluk(taluk)) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (BuildContext context) =>
                                Survey()),
                          );
                        }
                        else{
                          Fluttertoast.showToast(msg: "Please add all the information",toastLength: Toast.LENGTH_LONG, gravity: ToastGravity.CENTER);
                        }
                      },
                      child: Text(
                        'Save',
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
