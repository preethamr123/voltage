import 'package:flutter/material.dart';
import 'package:voltage/Franchise.dart';
import 'package:voltage/MyProfile.dart';

void main() =>
    runApp(MaterialApp(
      home: ShortlistedCandidates(),
    ));

class ShortlistedCandidates extends StatefulWidget {
  const ShortlistedCandidates({Key? key}) : super(key: key);

  @override
  State<ShortlistedCandidates> createState() => _ShortlistedCandidatesState();
}

class _ShortlistedCandidatesState extends State<ShortlistedCandidates> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
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
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 50,
                    color: Colors.transparent,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          width: MediaQuery
                              .of(context)
                              .size
                              .width,
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
                            onPressed: () =>
                                Navigator.of(context)
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
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 80,
                              height: 3,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.all(Radius.circular(
                                    11),
                                ),
                              ),
                            )
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25.0, right: 25.0),
                          child: Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: Colors.teal,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(5))
                                ),
                                child: Icon(Icons.list_alt_sharp,
                                  size: 35,
                                  color: Colors.white,),
                              ),
                              SizedBox(width: 20,),
                              Text('Shortlisted Candidates', style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        SizedBox(height: 60,),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.5,right: 25.5),
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(Radius.circular(25)),
                                      ),
                                      child: Icon(Icons.model_training,
                                        color: Colors.teal,
                                        size: 40,),
                                    ),
                                  ),
                                  Container(
                                    height: 50,
                                    width: 150,
                                    alignment: Alignment.center,
                                    child: Text('Training Candidate',style: TextStyle(color: Colors.black45),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,right: 25.0),
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(8))
                                      ),
                                      child: Icon(Icons.list_alt_sharp,
                                        color: Colors.teal,
                                        size: 40,),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Text('Interview Candidate',style: TextStyle(color: Colors.black45),),
                                  )
                                ],
                              ),

                            ),
                          ),
                        ),
                        SizedBox(height: 50,),
                        Padding(
                          padding: const EdgeInsets.only(left: 25.0,right: 25.0),
                          child: Card(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 80,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(11))
                                      ),
                                      child: Icon(Icons.person_sharp,
                                        color: Colors.teal,
                                        size: 40,),
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: Text('Finalized Candidate',style: TextStyle(color: Colors.black45),),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ]
                )
            )
        )
    );
  }
}