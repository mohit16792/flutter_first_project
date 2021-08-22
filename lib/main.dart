import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_first_project/Question.dart';

void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }

}

class MyAppState extends State<MyApp> {
  var index = 0;

  void answerQuestion() {
    setState(() {
      if(index>1){
        index=0;
      }else
      index=index+1;
    });
    print("button clicked");
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["what\'s your name", "is this your car"];
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("flutter first App"),
            ),
            body: Column(
              children: [
                Question(questions[index]),
                RaisedButton(
                  child: Text("Answer1"),
                  onPressed: answerQuestion,
                ),
                RaisedButton(
                  child: Text("Answer2"),
                  onPressed: () => print("button second is clicked"),
                ),
                RaisedButton(
                  child: Text("ANswer3"),
                  onPressed: () {
                    print("button third is clicked");
                  },
                ),
              ],
            )));
  }
}
