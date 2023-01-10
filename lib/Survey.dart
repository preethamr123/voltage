import 'package:flutter/material.dart';
import 'package:voltage/PaymentFailed.dart';

void main() => runApp(MaterialApp(
  home: Survey(),
));

class Survey extends StatefulWidget {


  @override
  State<Survey> createState() => _Survey();
}

class _Survey extends State<Survey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection:  Axis.vertical,
      child: Column(
        children: [
             Container(
              height: 150,
              width: 800,
              color: Colors.white,
              child: CustomPaint(
                foregroundPainter: LinePainter(),
              ),
            ),
          Padding(
            padding:  EdgeInsets.fromLTRB(40.0, 0, 0.0, 0.0),
            child: Container(
              child: Text(
                  'lets Impact the World with power',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
              ),
            )
            ),
          ),
          SizedBox(height: 25),
          Center(
            child: Container(
              child: Image.asset(
                'assets/Artboard – 2.png',
                fit: BoxFit.cover,
                width: 350,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
            child: Center(
              child: Container(
                child: Text(
                  'Tecnology is very simple tool to interlock your decision of ownership beware of everything',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    height: 2,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(20.0, 130.0, 20.0, 0.0),
              child: Container(
                child: SizedBox(
                  height: 55,
                  width: 500,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF108768),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
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
                      'Survey',
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

class LinePainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint linePaint = Paint()
      ..color = Colors.white;
    Offset p2 = Offset(60, 100);
    Offset p1 = Offset(330, 170);
    canvas.drawCircle(p2, 220, Paint()..color = Color(0xFF15B78C));
    canvas.drawCircle(p1, 200, Paint()..color = Color(0xFF108768));

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
