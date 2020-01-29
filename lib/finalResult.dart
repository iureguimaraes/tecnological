import 'package:flutter/material.dart';

class FinalResult extends StatelessWidget {
  final int result;
  final Function restart;
  FinalResult(this.result, this.restart);

  String get resultGetText {
    String resultText;

    if(result < 4) {
      resultText = 'Você precisa se atualizar um pouco mais!';
    } else if(result < 6) {
      resultText = 'Você está bem atualizado, mas pode melhorar.';
    } else {
      resultText = 'Parabéns! Você está bem atualizado!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext build) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left:20 , right: 20),
            child: Text(
              resultGetText,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.cyan[700],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: RaisedButton(
              child: Text(
                'Refazer Quiz',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: restart,
              elevation: 3,
              color: Colors.cyan[700],
              padding: EdgeInsets.only(top: 10, right: 30, bottom: 10, left: 30),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}