import 'package:flutter/material.dart';
import 'package:voltage/Franchise.dart';
import 'package:voltage/MyProfile.dart';

void main()=>runApp(MaterialApp(
  home: Project(),
));

class Project extends StatefulWidget {
  const Project({Key? key}) : super(key: key);

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
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
                                      Icons.file_present_outlined,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Project',
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
                                  '(Make report on your own language and present in simple pdf document)',
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 15),
                                ),
                              ),
                            ),
                            SizedBox(height: 15,),
                            Padding(
                                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 420,
                                  color: Colors.white,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 30,
                                        color: Colors.white,
                                        child: Text('Project Report',style: TextStyle(fontSize: 15)),
                                      ),
                                      Container(
                                        width: MediaQuery.of(context).size.width,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[100],
                                          borderRadius: BorderRadius.all(Radius.circular(11)
                                          ),
                                        ),
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(Icons.file_upload_outlined,
                                              color: Colors.teal,
                                              size: 30),

                                        ),
//color: Colors.teal,
                                      )
                                    ],
                                  ),
                                )
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                          padding:
                          const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            child: ElevatedButton(
                              child: Text(
                                'Send Mail',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            Franchise()));
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
              ]),
            )));
  }
}