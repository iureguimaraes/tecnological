import 'package:flutter/material.dart';
import './questions.dart';
import './finalResult.dart';

void main() {
  runApp(MyApp());
}

// Main widget. Like that allows link a state for the main widget.
class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// Main state class. Everything works from here.
class _MyAppState extends State<MyApp>{
  final _questions = const [
    {
      'simpleQuestion': 'O que é um Apple Watch?',
      'answers': [
        {'text': 'Um novo tipo de maçã', 'score': 0},
        {'text': 'Um relógio', 'score': 1},
        {'text': 'Uma TV', 'score': 0},
        {'text': 'Uma celular', 'score': 0},
      ],
    },
    {
      'simpleQuestion': 'Um iPhone é...',
      'answers': [
        {'text': 'Uma raça de cão', 'score': 0},
        {'text': 'Um jogo', 'score': 0},
        {'text': 'Um celular', 'score': 1},
        {'text': 'Uma profissão', 'score': 0},
      ],
    },
    {
      'simpleQuestion': 'Quem foi Steve Jobs?',
      'answers': [
        {'text': 'O fundador da Apple', 'score': 1},
        {'text': 'Um filósofo grego', 'score': 0},
        {'text': 'Um astronauta', 'score': 0},
        {'text': 'Um ator da Globo', 'score': 0},
      ],
    },
    {
      'simpleQuestion': 'Realidade aumentada é...',
      'answers': [
        {'text': 'Uma mentira muito grande', 'score': 0},
        {'text': 'Uma história de cordel', 'score': 0},
        {'text': 'Uma tecnologia', 'score': 1},
        {'text': 'Uma atriz de Hollywood', 'score': 0},
      ],
    },
    {
      'simpleQuestion': 'O que é um PS4?',
      'answers': [
        {'text': 'Um aparelho de medir pressão', 'score': 0},
        {'text': 'Um videogame', 'score': 1},
        {'text': 'A marca de um carro', 'score': 0},
        {'text': 'Uma sigla em latim', 'score': 0},
      ],
    },
    {
      'simpleQuestion': 'O que é 4K',
      'answers': [
        {'text': 'Um rapper americano', 'score': 0},
        {'text': 'O ator de The Avengers', 'score': 0},
        {'text': 'Uma unidade de medida', 'score': 0},
        {'text': 'Uma resolução de TV', 'score': 1},
      ],
    },
    {
      'simpleQuestion': 'O que é o Google Fuchsia?',
      'answers': [
        {'text': 'O novo sistema da Google', 'score': 1},
        {'text': 'Uma cor', 'score': 0},
        {'text': 'O nome de um cachorro', 'score': 0},
        {'text': 'A nova novela do SBT', 'score': 0},
      ],
    },
    {
      'simpleQuestion': 'O que é um wearable?',
      'answers': [
        {'text': 'Uma parte da internet', 'score': 0},
        {'text': 'Um dispositivo vestível', 'score': 1},
        {'text': 'Uma comida', 'score': 0},
        {'text': 'Um utensílio de cozinha', 'score': 0},
      ],
    },
  ];

  // This block provides the question change after chosen
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });

    if(_questionIndex < _questions.length) {
      print(_totalScore);
    }
  }

  // That's my main widget
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: Colors.cyan[700],
          elevation: 0,
          title: Center(
            child: Text(
              'Tecnological Quiz',
              style: TextStyle(fontSize: 15, color: Colors.cyan[50]),
            ),
          ),
        ),

        body: _questionIndex < _questions.length 
          ? Questions(_answerQuestion, _questions, _questionIndex)
          : FinalResult(_totalScore, _resetQuiz),

      ), 
    );
  }
}
