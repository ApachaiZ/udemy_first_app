import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  const Result({
    Key? key,
    required this.resultScore,
  }) : super(key: key);

  String get resultPhrase {
    var resultText = "Vous avez terminé";
    if (resultScore <= 8) {
      resultText = "Vous êtes super et innocent";
    } else if (resultScore <= 12) {
      resultText = "Vous êtes assez sympa";
    } else {
      resultText = "Vous êtes le sheitan";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
