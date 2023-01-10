import 'package:flutter/material.dart';
import 'package:voltage/Franchise.dart';
import 'package:voltage/MyProfile.dart';

void main() => runApp(MaterialApp(
  home: Research(),
));

class Research extends StatefulWidget {
  const Research({Key? key}) : super(key: key);

  @override
  State<Research> createState() => _ResearchState();
}

class _ResearchState extends State<Research> {
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
              physics: NeverScrollableScrollPhysics(),
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
                                      Icons.search_outlined,
                                      color: Colors.white,
                                      size: 22,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    'Research',
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
                                  '(Only approximate number is fair enough for every question)',
                                  style: TextStyle(
                                      color: Colors.teal, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 400,
                          color: Colors.white,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Number of stores')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '5',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text(
                                        'Number of small scale industries')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '4',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Number of families')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '500',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Available peoples')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '50000',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Tractors')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '50',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Tiller')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '25',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Goods auto')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '50',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('All type animals count')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '200',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Total land')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '1200 acre',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Major crops')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Major crops',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Minor crops')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      'Minor crops',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Schools')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '12',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Colleges')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '9',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child:
                                    Text('Water sources for agriculture')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '50',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Number of farms')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '15',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Poultry')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '12',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Nursery')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '15',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child:
                                    Text('Available agriculture Dry land')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '12 acre',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text('Wet land')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '15',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 30,
                                    color: Colors.white,
                                    child: Text(
                                        'Total govt departments available in your village ')),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 40,
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(11))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '12 acre',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),
                      Padding(
                          padding:
                          const EdgeInsets.only(left: 25.0, right: 25.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 55,
                            child: ElevatedButton(
                              child: Text(
                                'Save',
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