import 'package:flutter/material.dart';
import 'package:voltage/FirstRoute.dart';


void main() => runApp(MaterialApp(
  home: voltage(),
));

class voltage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Group 10.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 170.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  child: Image.asset(
                    'assets/Group 11.png',
                    fit: BoxFit.fill,
                    width: 250,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 0.0),
                child: Container(
                  child: Center(
                    child: Text(
                      'Lets impact world with power',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 120.0),
              Container(
                child: Center(
                  child: Text(
                    'Tecnology is a very simple tool to inter lock your decision of ownership beware of everything ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      height: 2.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: Container(
                  child: SizedBox(
                        height: 50,
                        width: 500,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (BuildContext context) =>
                                    FirstRoute()),
                              );
                            },
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Color(0xFF108768),
                                fontSize: 18,
                              ),
                            ),
                          ),
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}





