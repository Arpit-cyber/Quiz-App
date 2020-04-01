import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'I see myself as extraverted, enthusiastic.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as dependable, self-disciplined.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as open to new experiences, complex.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as reserved, quiet.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as sympathetic, warm.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as disorganized, careless.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as calm, emotionally stable.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
    {
      'questionText': 'I see myself as conventional, uncreative.',
      'answer': [
        {'text': 'Strongly Agree', 'score': 10},
        {'text': 'Agree a Litter', 'score': 5},
        {'text': 'Strongly Disagree', 'score': 1},
        {'text': 'Disagree a Little', 'score': 3}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){

    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    if (_questionIndex < _question.length) {
      print('We Have another Question!!!!!!');
    } else {
      print('No More Question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Personality Quiz')),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
