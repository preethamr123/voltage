import 'package:flutter/material.dart';
import 'package:voltage/PaymentFailed.dart';


class CreateProfile extends StatefulWidget {
  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  List<String> fruits = ['Apple', 'Banana', 'Grapes', 'Orange', 'Mango'];
  List<String> selectedFruits = [];
  int selectedValue = 1;

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
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 10.0, 0.0, 0.0),
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
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Computer Skills',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 0.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('(0/250 Characters)'),
                  ],
                ),
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
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Special Occupation',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 0.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('(0/250 Characters)'),
                  ],
                ),
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
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Business Experience',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 0.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('(0/250 Characters)'),
                  ],
                ),
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
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Agriculture Experience',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 0.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('(0/250 Characters)'),
                  ],
                ),
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
                minLines: 2,
                maxLines: 6,
                keyboardType: TextInputType.multiline,
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
                  hintText: '   Supervisior',
                  hintStyle: TextStyle(
                    color: Color(0xFFA1A7AC),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250.0, 0.0, 0.0, 0.0),
              child: Container(
                child: Row(
                  children: <Widget>[
                    Text('(0/250 Characters)'),
                  ],
                ),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (BuildContext context) =>
                              PaymentFailed()),
                        );
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
