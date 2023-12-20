import 'package:flutter/material.dart';
import 'package:first_app/answer_button.dart';
import 'package:first_app/data/dummy_questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(context) {
    final currentQuestion = dummyQuestion[0];
    return SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(currentQuestion.text,
                style: const TextStyle(color: Colors.white)),
            const SizedBox(height: 30),
            AnswerButton(
              answerText: currentQuestion.answers[0],
              onTap: () {},
            ),
            AnswerButton(
              answerText: currentQuestion.answers[1],
              onTap: () {},
            ),
            AnswerButton(answerText: currentQuestion.answers[2], onTap: () {}),
            AnswerButton(answerText: currentQuestion.answers[3], onTap: () {}),
          ],
        ));
  }
}
