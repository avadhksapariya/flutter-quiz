import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom/styled_font.dart';
import 'package:flutter_quiz_app/data/questions.dart';
import 'package:flutter_quiz_app/result/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledFont(
                'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly !',
                20,
                FontWeight.bold,
                const Color.fromARGB(255, 201, 153, 251)),
            const SizedBox(
              height: 30,
            ),
            QuestionSummary(summaryData),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const StyledFont('Restart Quiz !', 12, FontWeight.w400,
                  Color.fromARGB(255, 237, 223, 252)),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
