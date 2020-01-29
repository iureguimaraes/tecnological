import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function answerFuncQuestion;
  final String answerText;

  AnswerButton(this.answerFuncQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey[400].withOpacity(0.3),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(top: 5, right: 30, bottom: 5, left: 30),
      width: double.infinity,
      child: RaisedButton(
        elevation: 0,
        color: Colors.grey[100],
        child: Text(
          answerText,
          style: TextStyle(
            fontSize: 17,
          )
        ),
        onPressed: answerFuncQuestion,
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        textColor: Colors.cyan[700],
      ),
    );
  }
}
