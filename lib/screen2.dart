import 'package:flutter/material.dart';

// ignore: camel_case_types
class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  _screen2 createState() => _screen2();
}

// ignore: camel_case_types
class _screen2 extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Screen1.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              )),
        ),
        child: ListView(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/main');
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(80.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'The Nature',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(),

            Container(
              // margin: EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
              padding: EdgeInsets.fromLTRB(20.0, 440.0, 50.0, 0.0),
              child: Text(
                'About Nature',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'Nature is the broadcast sense, is the physical',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'world or universe. "Nature" can refer to the',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'phenomena of the physical world, and also to',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0),
            Container(
              padding: EdgeInsets.only(left: 20.0),
              child: Text(
                'life in general.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Row(
              children: [
                Center(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(260.0, 30.0, 0.0, 0.0),
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/main');
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5.0, 30.0, 0.0, 0.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 35.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                  ),
                ),
              ],
            ),

            Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(0.0, 90.0, 0.0, 0.0),
                child: Text(
                  '@GitHub/yashraj56',
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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
