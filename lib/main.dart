import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: () => answerQuestion(),
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
