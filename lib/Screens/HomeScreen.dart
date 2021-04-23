import 'package:flutter/material.dart';
import 'package:truefalsequiz_app/main.dart';

import 'QuizScreen.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController FullNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.indigo, Colors.indigoAccent])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                Text(
                  "Let's Play A Quiz Game",
                  style:TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Text(
                  'Enter Your Name below',
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Spacer(),
                TextFormField(
                  controller: FullNameController,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.indigo,
                    filled: true,
                    labelText: "FULL NAME",
                    labelStyle: TextStyle(
                      color: Colors.grey[300],
                      fontWeight: FontWeight.normal,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0,),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.all(Radius.circular(10.0),),
                  ),
                  child: MaterialButton(

                    height: 40.0,
                    onPressed: (){
                      MyApp.newUser.setName(FullNameController.text);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => QuizScreen(0),
                        )
                      );
                    },
                    padding: EdgeInsets.all(20.0),
                    child: Text("Let's Start".toUpperCase(),
                      style:TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 15.0,
                        color: Colors.white,
                      ),),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
