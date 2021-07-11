import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.only(left: 50, right: 50),
      child: ElevatedButton(
        onPressed: selectHandler,
        child: Text("Answer 1"),
        style: ElevatedButton.styleFrom(
          primary: Colors.green[600], //border width and color
          elevation: 10, //elevation of button
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(15)),
          padding: EdgeInsets.all(30),
        ),
      ),
    );
  }
}
