import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/question_screen.dart';
import 'package:flutter_quiz_app/screens/result_screen.dart';
import 'package:flutter_quiz_app/screens/start_screen.dart';

import '../data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';
  List<String> selectedAnswer = [];

  /*@override
  void initState() {
    activeScreen = SplashScreen(switchScreen);
    super.initState();
  }*/

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if(selectedAnswer.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswer = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(chosenAnswers: selectedAnswer, onRestart: restartQuiz,);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 47, 13, 84),
                Color.fromARGB(255, 67, 15, 96),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
            child: screenWidget //activeScreen == 'start-screen' ? SplashScreen(switchScreen) : QuestionScreen(onSelectAnswer: chooseAnswer),
        ),
      ),
    );
  }

}