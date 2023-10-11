import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom/styled_font.dart';
import 'package:flutter_quiz_app/result/question_numbers.dart';

class SummaryItems extends StatelessWidget {
  const SummaryItems(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionNumber(questionIndex: itemData['question_index'] as int, isCorrectAnswer: isCorrectAnswer),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 8.0)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledFont(itemData['question'] as String, 14, FontWeight.w600, const Color.fromARGB(255, 255, 255, 255)),
              StyledFont(itemData['user_answer'] as String, 13, FontWeight.w400, const Color.fromARGB(255, 202, 171, 252)),
              StyledFont(itemData['correct_answer'] as String, 13, FontWeight.w500, const Color.fromARGB(255, 181, 254, 246)),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    );
  }

}