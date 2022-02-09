import 'package:flutter/material.dart';
import 'package:practice1/screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/screen2': (BuildContext context) => new screen2(),
        '/main': (BuildContext context) => new MyApp()
      },
      title: 'THe Nature',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const MyHomePage() : super();
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/Welcome_screen.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.6),
                BlendMode.darken,
              )),
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 40.0, 50.0, 0.0),
              child: Text(
                'WELCOME',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 400.0, 50.0, 0.0),
              child: Text(
                'THE',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 0.0, 50.0, 0.0),
              child: Text(
                'NATURE',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 10.0, 50.0, 0.0),
              child: Text(
                'In nature, nothing is perfect',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30.0, 5.0, 50.0, 0.0),
              child: Text(
                'and everything is perfect.',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/screen2');
              },
              child: Container(
                height: 40.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  color: Colors.white,
                ),
                margin: EdgeInsets.fromLTRB(260, 0.0, 30.0, 0.0),
                // padding: EdgeInsets.all(20.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(29.0, 8.0, 5.0, 5.0),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold,
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
