import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class CurrentObjectiveScreen extends StatelessWidget{
  @override

  var objectiveName = "Schrittname";
  var objectiveDesctiprion = "Schrittbeschreibung";

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: MyApp.primaryBlack
      ),

      home: Scaffold(
        appBar: AppBar(
            title: Text("Quest info")
          ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,

              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: RichText(
                          text: TextSpan(text:objectiveName,
                                          style: TextStyle(fontWeight: FontWeight.bold,
                                                            fontSize: 30,
                                                            color: Colors.black
                                                            ),
                                        ),
                      ),
                    )
                  ]),

                Expanded(
                    child: Container(
                      child: RichText(
                          text: TextSpan(text:objectiveDesctiprion,
                            style: TextStyle(fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Colors.black
                            ),

                          ),
                        ),
                      ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[

                    FlatButton(
                      child: new Icon(
                        Icons.photo_camera,
                        color: Colors.white,
                        size: 40.0
                        ),
                      shape: new CircleBorder(),
                        color: Colors.black,
                        onPressed: () {
                        Navigator.pop(context);
                        },
                      padding: const EdgeInsets.all(15.0)
                           )

                    ],
                )
              ],
            ),
          )
        )
      )

    );
  }

}