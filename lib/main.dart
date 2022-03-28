import 'package:flutter/material.dart';
import 'package:udemy_first_app/question.dart';

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

  void _answerQuestion() {
    setState(
      () {
        _questionIndex++;
      },
    );
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    List questions = [
      "Quel est votre animal préféré ?",
      "Quel est votre hobby préféré ?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Udemy First App"),
        ),
        body: Column(
          children: [
            Question(
              questionText: questions.elementAt(_questionIndex),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text("Answer 2"),
            ),
          ],
        ),
      ),
    );
  }
}
