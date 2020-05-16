import 'package:flutter/material.dart';
 
class Answer extends StatelessWidget {
  final Function selecthandler;

  Answer(this.selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text("Answer 4"),
        color: Colors.blue,
        textColor: Colors.white,
        onPressed: this.selecthandler,
      ),
    );
  }
}