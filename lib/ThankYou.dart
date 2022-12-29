import 'package:flutter/material.dart';
import 'package:voltage/SubmitTrails.dart';


void main()=>runApp(MaterialApp(
  home: ThankYou(),
));

class ThankYou extends StatefulWidget {
  const ThankYou({Key? key}) : super(key: key);

  @override
  State<ThankYou> createState() => _ThankYouState();
}

class _ThankYouState extends State<ThankYou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 150,
                  color: Colors.white,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.white,
                  alignment: Alignment.topCenter,
                  child: Image(image: AssetImage('assets/ThankYou.jpeg'),),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 80,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Text('Thank You !', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.teal ),)
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Text('Thank you for answering the questions your response have been saved',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black26 ),)
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      'Go Back',
                      style: TextStyle(
                          color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  SubmitTrails()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Colors.teal,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(11),
                        )),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}