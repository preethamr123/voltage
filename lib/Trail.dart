import 'package:flutter/material.dart';
import 'package:voltage/FirstQuestion.dart';
import 'package:voltage/MyProfile.dart';


void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
                          alignment: Alignment.center,
                          child: Text(
                                '          '
                                'Trails',
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
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(21),
                            topLeft: Radius.circular(21),
                          )),
                      padding: EdgeInsets.all(10.0),
                      child: GridView(
                        children: [
                          Card(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    (MaterialPageRoute(
                                        builder: (BuildContext context) =>
                                            FirstQuestion())));
                              },
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.widgets_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Trail 1',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 17),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.widgets_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Trail 2',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.widgets_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Trail 3',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.widgets_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Trail 4',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Card(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(21),
                                    color: Colors.white),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.widgets_outlined,
                                      size: 50,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      'Trail 5',
                                      style: TextStyle(
                                          color: Colors.black26, fontSize: 17),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 11,
                            crossAxisSpacing: 11),
                      ),
                    ),
                  ),
                ]))));
  }
}