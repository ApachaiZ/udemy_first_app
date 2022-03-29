import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  const Result({
    Key? key,
    required this.resultScore,
    required this.resetQuiz,
  }) : super(key: key);

  String get resultPhrase {
    var resultText = "Vous avez terminé";
    if (resultScore <= 10) {
      resultText = "Vous êtes super et innocent $resultScore";
    } else if (resultScore <= 20) {
      resultText = "Vous êtes assez sympa $resultScore";
    } else {
      resultText = "Vous êtes le sheitan $resultScore";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Center(
            child: Text(
              resultPhrase,
              style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: resetQuiz,
            child: const Text("Restart Quiz"),
          )
        ],
      ),
    );
  }
}
