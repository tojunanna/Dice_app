import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('Dice Application'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}


class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // const DicePage({Key? key}) : super(key: key);
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice (){
    setState(() {
      rightDiceNumber  = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    }              );

  }

  @override
  Widget build(BuildContext context) {
// int rightDiceNumber = 1;
    return Center(
      child: Row(
        children: [
         Expanded(
           child: MaterialButton(
             onPressed: (){
               changeDice ();
             },
             child: Image(image: AssetImage('images/dices$leftDiceNumber.png'),
           ),
      ),
      ),
          Expanded(
            child: MaterialButton(
              onPressed: (){
                changeDice ();

              },
              child: Image(image: AssetImage('images/dices$rightDiceNumber.png'),
      ),



          ),
          ),
  ]
      ),
    );
  }
}
