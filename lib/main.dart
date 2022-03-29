import 'package:flutter/material.dart';
import 'package:udemy_first_app/quiz.dart';
import 'package:udemy_first_app/result.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScrore = 0;
  final _questions = const [
    {
      'questionText': "Quel est votre animal préféré ?",
      'answers': [
        {'text': 'Chien', 'score': 10},
        {'text': 'Chat', 'score': 5},
        {'text': 'Lapin', 'score': 1}
      ],
    },
    {
      'questionText': "Quel est votre couleur préférée ?",
      'answers': [
        {'text': 'Bleu', 'score': 10},
        {'text': 'Rouge', 'score': 5},
        {'text': 'Jaune', 'score': 1}
      ]
    },
    {
      'questionText': "Quel est votre hobby préférée ?",
      'answers': [
        {'text': 'Sport', 'score': 10},
        {'text': 'Jeux Videos', 'score': 5},
        {'text': 'Jeux de société', 'score': 1}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScrore += score;
    setState(
      () {
        _questionIndex++;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Udemy First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(resultScore: _totalScrore),
      ),
    );
  }
}
