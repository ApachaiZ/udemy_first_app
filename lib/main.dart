import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(
      () {
        questionIndex++;
      },
    );
    print(questionIndex);
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
            Text(questions.elementAt(questionIndex)),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text("Answer 1"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text("Answer 2"),
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: const Text("Answer 2"),
            ),
          ],
        ),
      ),
    );
  }
}
