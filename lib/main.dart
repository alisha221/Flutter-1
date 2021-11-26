import 'package:flutter/material.dart';
import 'package:flutter_application_2/result.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 20},
        {'text': 'Blue', 'score': 30},
        {'text': 'White', 'score': 40},
      ],
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'cat', 'score': 14},
        {'text': 'lion', 'score': 20},
        {'text': 'elephant', 'score': 30},
        {'text': 'dog', 'score': 40},
      ],
    },
    {
      'questionText': 'What is your favourite instructor?',
      'answers': [
        {'text': 'Tushar Bohara', 'score': 40},
        {'text': 'Umesh Nepal', 'score': 30},
        {'text': 'Prajun Shrestha', 'score': 20},
        {'text': 'Biwash Adhikari', 'score': 10},
      ],
    },
  ];
  var _questionIndex = 0;

  void _answerQuestion() {
    // var aBool = true;
    // aBool = false;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    debugPrint(_questionIndex);
    if (_questionIndex < _questions.length) {
      debugPrint('We have more questions!');
    } else {
      debugPrint('No more questions.');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // dummy.add('Tushar Bohara');
    // print(dummy);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My first App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
