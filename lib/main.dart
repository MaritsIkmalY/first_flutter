import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var questionIndex = 0;

    void answerQuestion() {
      questionIndex = questionIndex + 1;
      print('Hello World !');
    }

    var questions = [
      'What\'s Your Favorite Color?',
      'What\'s Your Favorite Movie?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () {
                  print('Good Job');
                },
                child: Text('Answer 2')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 3')),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 4')),
          ],
        ),
      ),
    );
  }
}
