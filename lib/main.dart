import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    const _questions = [
      //This is Map
      {
        'questionText': 'What\'s Your Favorite Color?',
        'answer': ['Black', 'Blue', 'Yellow', 'Green']
      },
      {
        'questionText': 'What\'s Your Favorite Movie?',
        'answer': ['Kung Fu Panda', 'Pororo', 'One Piece', 'Blue Lock']
      },
      {
        'questionText': 'What\'s Your Favorite Song?',
        'answer': ['SciFi', 'Balling', 'Call Me Back', 'Isohel']
      },
      {
        'questionText': 'What\'s Your Favorite Drink?',
        'answer': ['Water', 'Coca Cola', 'Pop Ice', 'Milk']
      },
      {
        'questionText': 'What\'s Your Favorite Food?',
        'answer': ['Mie Ayam', 'Bakso', 'Ayam Goreng', 'Telur']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My First Aps',
          ),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Question(
              _questions[_questionIndex]['questionText'] as String,
            ),
            ...(_questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
