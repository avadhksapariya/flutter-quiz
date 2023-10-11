import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/result/summary_items.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 375,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return SummaryItems(data);
          }).toList(),
        ),
      ),
    );
  }
}
