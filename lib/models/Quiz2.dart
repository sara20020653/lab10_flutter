import 'dart:html';

import 'package:flutter/material.dart';
import '../component/question2.dart';

class Quiz2 extends StatefulWidget {
  const Quiz2({super.key});

  @override
  State<Quiz2> createState() => _nameState();
}

class _nameState extends State<Quiz2> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            centerTitle: true,
            bottom: TabBar(tabs: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.question_answer),
              ),
            ]),
            title: Text(
              "Quiz App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.brown.shade900,
                fontFamily: "JosefinSans-Italic",
              ),
            ),
          ),
          body: TabBarView(children: [
            Question(
                Ques: "Which country was occupied by France?",
                ans_1: "Jordan",
                ans_2: "Iraq",
                ans_3: "Palastin",
                correctAnswer: "Syria"),
            Question(
                Ques:
                    "Which country is considered a kingdom and not a republic?",
                ans_1: "Palastin",
                ans_2: "Iraq",
                ans_3: "Syria",
                correctAnswer: "Jordan"),
            Question(
                Ques: "Which country was Saddam Hussein headed?",
                ans_1: "Palastin",
                ans_2: "Jordan",
                ans_3: "Syria",
                correctAnswer: "Iraq"),
          ]),
        ));
    ;
  }
}
