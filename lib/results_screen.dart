import 'package:first_app/data/dummy_questions.dart';
import 'package:flutter/material.dart';



class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswer});

  final List<String> chosenAnswer;

  // map: maps values to keys
  List<Map<String, Object>> getSummaryData() {
    // list of maps
    final List<Map<String, Object>> summary = [];

    // To excute a code snippet multiple times
    for (var i = 0; i < chosenAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': dummyQuestions[i].text,
        'correct_answer': dummyQuestions[i].answers[0],
        'user_answer': chosenAnswer[i]
      },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered this questions correctly'),
            const SizedBox(height: 30),
            const Text('List of answers and questions'),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Restart Quiz'),
            )
          ],
        ),
      ),
    );
  }
}
