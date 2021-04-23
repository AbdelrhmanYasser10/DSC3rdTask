import 'package:flutter/material.dart';
import 'package:truefalsequiz_app/Model/Quiz.dart';
import 'package:truefalsequiz_app/main.dart';

import 'ScoreScreen.dart';

class QuizScreen extends StatefulWidget {
  int index;
  QuizScreen(this.index);

  @override
  _State createState() => _State();
}

class _State extends State<QuizScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Color.fromRGBO(40, 49, 59, 1),
            Color.fromRGBO(72, 84, 97, 1)
          ])),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'QUIZ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                myQuiz.quiz[widget.index].question,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MaterialButton(
                    onPressed: () {
                      if (myQuiz.quiz[widget.index].answer == true)
                        setState(() {
                          isCorrect = true;
                          isWrong = false;
                          MyApp.newUser.score++;
                        });
                      else
                        setState(() {
                          isCorrect = false;
                          isWrong = true;
                        });
                    },
                    child: Container(
                      width: 150.0,
                      height: 70.0,
                      child: Center(
                        child: Text(
                          'TRUE',
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      if (myQuiz.quiz[widget.index].answer == false)
                        setState(() {
                          isCorrect = true;
                          isWrong = false;
                          MyApp.newUser.score++;
                        });
                      else
                        setState(() {
                          isCorrect = false;
                          isWrong = true;
                        });
                    },
                    child: Container(
                      width: 150.0,
                      height: 70.0,
                      child: Center(
                        child: Text(
                          'FALSE',
                          style: TextStyle(fontSize: 40.0, color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ],
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => widget.index < 3
                          ? QuizScreen(widget.index + 1)
                          : ScoreScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 250.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'NEXT',
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
