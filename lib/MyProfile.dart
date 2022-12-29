import 'package:flutter/material.dart';

import 'package:voltage/EditProfile.dart';
import 'package:voltage/Franchise.dart';
import 'package:voltage/main.dart';

void main() => runApp(MaterialApp(
  home: MyProfile(),
));

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/trail.jpeg'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter,
            )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:
            Column(
              children: [

                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: Colors.transparent,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 22,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        Franchise()));
                          },
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'My Profile',
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.edit_note_sharp,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EditProfile())),
                        ),
                      ),
                    ),
                  ],
                ),
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child:
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(21),
                              topLeft: Radius.circular(21),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20.0,left: 10.0,right: 20.0,bottom: 30.0),
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 100,
                              color: Colors.white,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:20.0),
                                      child: Container(
                                        child: Text('Name'),
                                        alignment: Alignment.topLeft,
                                      ),
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                      child: Container(
                                        child: Text('Aakash', style: TextStyle(color: Colors.black45),),
                                        alignment: Alignment.topLeft,
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Mobile Number'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('91 94xxxxxx51',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Email Address'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('akash123@gmail.com',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Address'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('Door no, Address Line 1-541258',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Computer Skills'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('Computer Skills, Lorem Ipsum is simply dummy text and typesetting industry',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Special Occupation'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('Special Occupation, Lorem Ipsum is simply dummy text and typesetting industry',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Business Experience'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('Business Experience, Lorem Ipsum is simply dummy text and typesetting industry',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Agriculture Experience'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('Agriculture Experience, Lorem Ipsum is simply dummy text and typesetting industry',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top:10.0),
                                        child: Container(
                                          child: Text('Marketing Experience'),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    SizedBox(height: 10,),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child:
                                        Container(
                                          child: Text('Marketing Experience, Lorem Ipsum is simply dummy text and typesetting industry',style: TextStyle(color: Colors.black45),),
                                          alignment: Alignment.topLeft,
                                        )
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.only(left: 20.0,right: 20.0),
                                        child: Divider(
                                          height: 10,
                                        )
                                    ),
                                    SizedBox(height: 30,),
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(left: 25.0, right: 25.0),
                                        child: Container(
                                          width: MediaQuery.of(context).size.width,
                                          height: 50,
                                          child: ElevatedButton(
                                            child: Text(
                                              'LogOut',
                                              style: TextStyle(
                                                  color: Colors.white, fontSize: 18),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pushReplacement(MaterialPageRoute(
                                                  builder: (BuildContext context) => voltage()));
                                            },
                                            style: ElevatedButton.styleFrom(
                                                primary: Colors.teal,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(11),
                                                )),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
        )
    );
  }
}