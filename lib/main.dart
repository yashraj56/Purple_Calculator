// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice1/buttons.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // routes: <String, WidgetBuilder>{
      //   '/screen2': (BuildContext context) => new screen2(),
      //   '/main': (BuildContext context) => new MyApp()
      // },
      title: 'Purple Calculator',
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
  var userquestion = '';
  var useranswer = '0.0';

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      body: Column(
        children: [
          Row(
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(30.0, 60.0, 0.0, 0.0),
                  child: Text(
                    'Calculator ',
                    style: TextStyle(fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',

                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0.0, 75.0, 0.0, 0.0),
                  child: Text('©_GitHub/yashraj56',
                    style: TextStyle(fontSize: 11.0,fontWeight: FontWeight.w400
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      userquestion,
                      style: TextStyle(fontSize: 40),
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.fromLTRB(0.0, 20.0, 30.0, 0.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      useranswer,
                      style: TextStyle(fontSize: 40),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 20.0),
              child: GridView.builder(
                itemCount: buttons.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userquestion = '';
                          useranswer = '0.0';
                        });
                      },
                      buttontext: buttons[index],
                      color: Colors.green,
                      textcolor: Colors.white,
                    );
                  } else if (index == 1) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userquestion = userquestion.substring(
                              0, userquestion.length - 1);
                        });
                      },
                      buttontext: buttons[index],
                      color: Colors.red,
                      textcolor: Colors.white,
                    );
                  } else if (index == buttons.length - 1) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          equal_pressed();
                        });
                      },
                      buttontext: buttons[index],
                      color: Colors.deepPurple,
                      textcolor: Colors.white,
                    );
                  }
                  else if (index == buttons.length - 2) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          equal_pressed();
                        });
                      },
                      buttontext: buttons[index],
                      color: Colors.deepPurple,
                      textcolor: Colors.white,
                    );
                  }else {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userquestion += buttons[index];
                        });
                      },
                      buttontext: buttons[index],
                      color: isOperator(buttons[index])
                          ? Colors.deepPurple
                          : Colors.deepPurple[50],
                      textcolor: isOperator(buttons[index])
                          ? Colors.white
                          : Colors.deepPurple,
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void equal_pressed() {
    String finalquestion = userquestion;
    finalquestion = finalquestion.replaceAll('x', '*');
    Parser p = Parser();
    Expression exp = p.parse(finalquestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    useranswer = eval.toString();
  }
}

bool isOperator(String x) {
  if (x == '+' || x == '-' || x == 'x' || x == '%' || x == '/' || x == '=')
    return true;
  else
    return false;
}
