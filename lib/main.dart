import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chosen 1!');
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
            Text('The Questions'),
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
