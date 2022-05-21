import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() => {});
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'Qual\è il tuo colore preferito?',
      'Qual\è la tua squadra preferità',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("quiz demo"),
        ),
        body: Column(
          children: <Widget>[
            Text(questions.elementAt(questionIndex)),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Domanda 1'),
            ),
            ElevatedButton(
              onPressed: () => print('ciaoooo'),
              child: Text('Domanda 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('ciaoooo');
              },
              child: Text('Domanda 3'),
            ),
          ],
        ),
      ),
    );
  }
}
