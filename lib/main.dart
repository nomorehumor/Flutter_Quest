import 'package:flutter/material.dart';
import 'package:flutter_app/CommentButton.dart';
import 'package:flutter_app/CurrentObjectiveScreen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Quest',
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
        theme: ThemeData(
          primarySwatch: primaryBlack,
        ),

        home: Scaffold(
            appBar: AppBar(
              title: RichText(
                  text: TextSpan(text:" Title",
                                style: TextStyle(fontWeight: FontWeight.bold,
                                                  fontSize: 30),
                  ),
              ),
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
                      padding: const EdgeInsets.all(30.0),
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
                      width: double.infinity,
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
    var button = FlatButton(
        child: new Icon(
          Icons.comment,
          color: Colors.black,
        ),

        shape: new CircleBorder(),

        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondRoute()),
          );
        },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: button,
      );
  }
}


