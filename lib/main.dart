import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

//void main() => runApp(MyApp());

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {


  static const int _blackPrimaryValue = 0xFF000000;

  static const MaterialColor primaryBlack = MaterialColor(
    _blackPrimaryValue,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: Color(_blackPrimaryValue),
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Welcome to flutter',
        theme: ThemeData(
          primarySwatch: primaryBlack,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Title"),
            ),
            body: Center(
              child: Container(
                //color: Colors.amber,
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                                     child: RichText(
                                        text: TextSpan(text: "Quest ",
                                                      style: TextStyle( fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                      fontSize: 25,
                                                      letterSpacing: 0.005),
                                    children: <TextSpan>[
                                      TextSpan(text: "Lorem ipsum dolor sit amet, "
                                          "consectetur adipiscing elit, "
                                          "sed do eiusmod tempor incididunt ut "
                                          "labore et dolore magna aliqua. Ut "
                                          "enim ad minim veniam, quis nostrud "
                                          "exercitation ullamco laboris nisi ut "
                                          "aliquip ex ea commodo consequat. Duis"
                                          "aute irure dolor in reprehenderit in"
                                          " voluptate velit esse ", style: TextStyle(fontWeight: FontWeight.normal)),
                                    ]
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 230,
                      child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: RaisedButton(
                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SecondRoute()),
                            );
                          },
                          child:Text('Button', style: TextStyle(fontSize: 20),),
                        ),
                      ),
                    )
                  ])
              ),
            )
        )
    );
  }
}
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
              Navigator.pop(context);
              },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}


