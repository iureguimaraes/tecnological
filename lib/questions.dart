import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Questions extends StatelessWidget {
  final Function funcAnswer;
  final List<Map<String, Object>> questionList;
  final int questionIndex;

  Questions(
    this.funcAnswer, 
    this.questionList, 
    this.questionIndex
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Question(questionList[questionIndex]['simpleQuestion']),
        Container(
          margin: EdgeInsets.only(top: 80),
          child: Column(
            children:[
              ...(questionList[questionIndex]['answers'] as List<Map<String, Object>>)
                .map((answer) {
                  return AnswerButton(() => funcAnswer(answer['score']), answer['text']); 
              }).toList()
            ],
          ),
        ),
      ],
    );
  }
}