import 'package:flutter/material.dart';
import 'package:flutter_app/CommentButton.dart';
import 'package:flutter_app/CommentSection.dart';
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
                          child:Text('Button', style: TextStyle(fontSize: 20),
                          ),
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


    var currentObjButton = FlatButton(
      child: new Icon(
        Icons.list,
        color: Colors.black,
        size: 35.0,
      ),
      
      shape: new CircleBorder(),
      color: Colors.white,
      padding: EdgeInsets.all(12.0),

      onPressed: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CurrentObjectiveScreen()), // to current objective screen
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
        backgroundColor: Colors.black,
      ),
      body: Center(
                child: Container(
                  color: Colors.red, // remove in camera screen
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                            buildCommentButton(context, false),
                            currentObjButton
                      ],
                    ),
                  ),
                ),
              ),
    );

  }

  Widget buildCommentButton(BuildContext context, bool isButtonDisabled) {

    return new FlatButton(
      child: new Icon(
        Icons.comment,
        color: Colors.black,
        size: 35.0,
      ),

      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0),),
      color: isButtonDisabled ? Colors.white30 : Colors.white,
      padding: EdgeInsets.only(top:10.0, right: 120.0, left: 120.0, bottom: 10.0),

      onPressed: isButtonDisabled ? (){} : (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CommentSection()),
        );
      },
    );
  }
}



