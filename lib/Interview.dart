import 'package:flutter/material.dart';
import 'package:voltage/Franchise.dart';
import 'package:voltage/MyProfile.dart';

void main() => runApp(MaterialApp(
  home: Interview(),
));

class Interview extends StatefulWidget {
  const Interview({Key? key}) : super(key: key);

  @override
  State<Interview> createState() => _InterviewState();
}

class _InterviewState extends State<Interview> {
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
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (BuildContext context) => Franchise()));
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
                      onPressed: () => Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) => MyProfile())),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 75,
                      height: 3,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(11)),
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      color: Colors.white,
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
//color: Colors.teal,
                                decoration: BoxDecoration(
                                  color: Colors.teal,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  ),
                                ),
                                child: Icon(
                                  Icons.people_alt,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text('Interview',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22)),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                '(interview selection parameters will be based on your survey form, research report and project report also Capability of candidate who willing to work independently and work efficiently)',
                                style: TextStyle(
                                    wordSpacing: 2, color: Colors.teal, height:1.5),
                              )),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              '1. Lorem ipsum dolor sit ametnsectetur adipiscing elit, sed do eiusmod tempor incididunt ut enim ad minim veniam, quis nostrud exercitation ullam co laboris nisiut aliquip ex ea commodo consequat.uis aute irure dolor in reprehenderit in voluptrate velit esse cillum dolore uugiat nulla pariatur. Exceptur sint occae upidatat non prodent, sunt in culpa quiofficia deserunt mollit anim id est laborum.',
                              style: TextStyle(
                                  wordSpacing: 3, color: Colors.black45),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 50,
                          child: ElevatedButton(
                            child: Text(
                              'Not Interested',
                              style:
                              TextStyle(color: Colors.teal, fontSize: 15),
                            ),
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                ),
                                shadowColor: Colors.transparent,
                                side: BorderSide(color: Colors.teal)),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 140,
                          height: 50,
                          child: ElevatedButton(
                            child: Text(
                              'Interested',
                              style:
                              TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            onPressed: () {
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                shadowColor: Colors.transparent,
                                side: BorderSide(color: Colors.teal),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(8)))),
                          ),
                        )
                      ],
                    ),
                  ),
//)
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}