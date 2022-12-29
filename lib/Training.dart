import 'package:flutter/material.dart';
import 'package:voltage/Franchise.dart';
import 'package:voltage/MyProfile.dart';

void main() => runApp(MaterialApp(
  home: Training(),
));

class Training extends StatefulWidget {
  const Training({Key? key}) : super(key: key);

  @override
  State<Training> createState() => _TrainingState();
}

class _TrainingState extends State<Training> {

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
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(children: [
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
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: IconButton(
                          icon: Icon(
                            Icons.person_sharp,
                            color: Colors.white,
                            size: 32,
                          ),
                          onPressed: () => Navigator.of(context)
                              .pushReplacement(MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyProfile())),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(21),
                        topLeft: Radius.circular(21),
                      )),
                  child: Column(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 65,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(21),
                                      topLeft: Radius.circular(21),
                                      bottomRight: Radius.circular(21),
                                      bottomLeft: Radius.circular(21),
                                    )),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 30.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(5),
                                          topLeft: Radius.circular(5),
                                          bottomRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(5),
                                        )),
                                    child: Icon(
                                      Icons.on_device_training_sharp,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Training',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 25.0, right: 25.0, top: 15.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 50,
                                color: Colors.white,
                                alignment: Alignment.topLeft,
                                child: Text(
                                  '(Finalisation will be based on interview and training performance)',
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 15,height: 1.5),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                                padding: const EdgeInsets.only(
                                    left: 25.0, right: 25.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 420,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                        width:
                                        MediaQuery.of(context).size.width,
                                        height: 110,
                                        color: Colors.white,
                                        child: Text(
                                          '1. Lorem ipusum dolor sit amet, ghonstec consectetur adipiscing elit, sed, doet eiusmod tempor incididunut labore et dolore magna Utunut enim ad minim veniam, quisene nostrud exercitation ullam conu.',style: TextStyle(wordSpacing: 2, color: Colors.black45),),
                                      ),
//SizedBox(height: 15,),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 250,
                                        color: Colors.white,
                                        child: Text('2.Lorem ipsum dolor sit ametnsectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation uillam co laboris nisiut aliquip ex ea commodo consequat, uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore uugiat nulla pariatur. excepteur sint occae upidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',style: TextStyle(wordSpacing: 2, color: Colors.black45),),
                                      )
                                    ],
                                  ),
                                ))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:
                            const EdgeInsets.only(left: 25.0, right: 11.0),
                            child: Container(
                              width: 150,
                              height: 45,
                              child: ElevatedButton(
                                child: Text(
                                  'Not Interested',
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 16),
                                ),
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(color: Colors.teal),
                                    )),
                              ),
                            ),

                          ),

                          Padding(
                            padding:
                            const EdgeInsets.only(left: 8.0, right: 25.0),
                            child: Container(
                              width: 140,
                              height: 45,
                              child: ElevatedButton(
                                child: Text(
                                  'Interested',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                onPressed: () {
                                },
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.teal,
// primary: isSelected ? Colors.teal : Colors.white,
//onPrimary: isSelected ? Colors.white : Colors.teal,
                                    shadowColor: Colors.transparent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      side: BorderSide(color: Colors.teal),
                                    )),
                              ),
                            ),

                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            )));
  }
}