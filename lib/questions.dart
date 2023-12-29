import 'package:flutter/material.dart';
import 'package:first_app/answer_button.dart';
import 'package:first_app/data/dummy_questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = dummyQuestions[currentQuestionIndex];
    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                currentQuestion.text,
                style: GoogleFonts.lato(
                    color: Color.fromARGB(255, 219, 188, 235),
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...currentQuestion.getShuffledAnswers().map((answer) {
                return AnswerButton(
                  answerText: answer,
                  onTap: () {
                    answerQuestion(answer);
                  },
                );
              })
            ],
          ),
        ));
  }
}
