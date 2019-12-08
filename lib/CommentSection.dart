import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommentSection extends StatefulWidget{
  CommentSection({
    Key key,
    this.color,
  }): super(key: key);

  final Color color;

  @override
  _UpdateCommentSection createState() => new _UpdateCommentSection();
}

class _UpdateCommentSection extends State<CommentSection>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
        backgroundColor: Colors.black,
      ) ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(5.0))
                    ),
                    padding: const EdgeInsets.all(15.0),
                    child: RichText(
                      text: TextSpan(
                        text: "User124" + "\n",
                        style: TextStyle( fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Kuhle Vase",
                            style: TextStyle(fontWeight: FontWeight.normal,
                                fontSize: 20
                            ),
                          ),
                        ]
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          )
                        ),
                        labelText: "Your Comment:"
                      ),
                    ),
                  ),
                  FlatButton(
                    child: new Icon(
                      Icons.arrow_upward,
                      color: Colors.white,
                      size: 35.0,
                    ),

                    shape: new CircleBorder(),
                    color: Colors.black,
                    padding: EdgeInsets.all(4.0),

                    onPressed: (){}
                  ),
                ],
              ),

            ],
          ),
        ),
      )
    );
}
}