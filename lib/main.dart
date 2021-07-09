import 'package:flutter/material.dart';
import 'package:newapp/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    //
    var questions = [
      'What\'s  your name?',
      'What\'s  your age?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            ElevatedButton(
              onPressed: () => _answerQuestion(),
              child: Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer chosen 2'),
              child: Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer chosen 3'),
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
