import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/custom/styled_font.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          backgroundColor: const Color.fromARGB(255, 121, 109, 179),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          )
        ),
        child: StyledFont(answerText, 13, FontWeight.w400, Colors.white),
    );
  }

}