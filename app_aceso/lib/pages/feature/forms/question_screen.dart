import 'package:app_aceso/pages/feature/forms/initial_form.dart';
import 'package:app_aceso/pages/feature/forms/phq9_model.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

String phq1 = '';
String phq2 = '';
String phq3 = '';
String phq4 = '';
String phq5 = '';
String phq6 = '';
String phq7 = '';
String phq8 = '';
String phq9 = '';

class _QuestionScreenState extends State<QuestionScreen> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            top: 20,
            left: 20,
            right: defaultPadding,
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            IconButton(
              icon: Iback,
              color: APrimaryColor,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            IconButton(
                icon: Iclear,
                color: APrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => InitialForm()),
                  );
                })
          ]),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _currentWidget(),
              _questionWidget(),
              _answerList(),
            ],
          ),
        ),
        const SizedBox(height: 30),
      ],
    )));
  }

  _currentWidget() {
    return Text(
      "${currentQuestionIndex + 1}/${questionList.length.toString()}",
      style: textnormalLight,
    );
  }

  _questionWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Text(
        questionList[currentQuestionIndex].questionText,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Prompt',
          fontSize: 22.0,
          color: Color(0xff464646),
        ),
      ),
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      height: 50,
      child: ElevatedButton(
        child: Text(
          answer.answerText,
          style: TextStyle(
            fontFamily: 'Prompt',
            fontSize: 18.0,
          ),
        ),
        style: ElevatedButton.styleFrom(
          side: const BorderSide(color: APrimaryLightColor),
          primary: Colors.white,
          onPrimary: APrimaryColor,
          elevation: 0,
        ),
        onPressed: () {
          ///------------------------เก็บค่าตัวแปร------------------------
          String currentAnswer = answer.answerText;
          if (currentQuestionIndex == 0) {
            phq1 = currentAnswer;
          } else if (currentQuestionIndex == 1) {
            phq2 = currentAnswer;
          } else if (currentQuestionIndex == 2) {
            phq3 = currentAnswer;
          } else if (currentQuestionIndex == 3) {
            phq4 = currentAnswer;
          } else if (currentQuestionIndex == 4) {
            phq5 = currentAnswer;
          } else if (currentQuestionIndex == 5) {
            phq6 = currentAnswer;
          } else if (currentQuestionIndex == 6) {
            phq7 = currentAnswer;
          } else if (currentQuestionIndex == 7) {
            phq8 = currentAnswer;
          } else if (currentQuestionIndex == 8) {
            phq9 = currentAnswer;
          }
          ///------------------------เก็บค่าตัวแปร------------------------






          print('************************************************************************');
          print('---------------------------------------------');
          print('---------------------------------------------');
          print('อยู่ข้อที่ = $currentQuestionIndex');
         print('-------------------------------------');
         print('answer.toString() = ');
         print(answer.answerText);
          print('---------------------------------------------');
          print('---------------------------------------------');


          setState(() {
            selectedAnswer = answer;
            currentQuestionIndex++;
            print('---------------------------------------------');
            print('---------------------------------------------');
            print('ข้อต่อไปคือข้อที่ = $currentQuestionIndex');
            print('-------------------------------------');
            print('answer.toString() = ');
            print(answer.answerText);
            print('---------------------------------------------');
            print('---------------------------------------------');
            print('************************************************************************');
            print('phq1 = $phq1');
            print('phq2 = $phq2');
            print('phq3 = $phq3');
            print('phq4 = $phq4');
            print('phq5 = $phq5');
            print('phq6 = $phq6');
            print('phq7 = $phq7');
            print('phq8 = $phq8');
            print('phq9 = $phq9');



          });
        },
      ),
    );
  }
}
