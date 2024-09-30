import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(DicePage());
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  void changDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        appBar: AppBar(
          title: Text('Dicee-chivku'),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        changDiceFace();
                      },
                      child: Image.asset('images/dice$leftDiceNumber.png'))),
              Expanded(
                  child: TextButton(
                      onPressed: () {
                        changDiceFace();
                      },
                      child: Image.asset('images/dice$rightDiceNumber.png'))),

            ],
          ),
        ),
      ),
    );
  }
}

// class DicePage extends StatefullWidget{
//   @override
//   _State createState()=>_State();
// }
// class _State extends State<>{
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black38,
//         appBar: AppBar(
//           title: Text('Dicee'),
//           backgroundColor: Colors.white,
//         ),
//         body: Container(),
//       ),
//     );
//   }
// }
// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.black38,
//         appBar: AppBar(
//           title: Text('Dicee'),
//           backgroundColor: Colors.white,
//         ),
//         body: Container(),
//       ),
//     );
//
//   }
// }
