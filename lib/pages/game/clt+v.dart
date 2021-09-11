// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Test1 extends StatefulWidget {
//   const Test1({Key? key}) : super(key: key);
//
//   @override
//   _GamePageState createState() => _GamePageState();
// }
//
// class _GamePageState extends State<Test1> {
//   bool showNumber = true;
//   bool endGame = false;
//   var i = 0;
//   bool blue = true;
//   var star = 0;
//
//   _newGame() {
//     setState(() {
//       i = 0;
//       star = 0;
//       showNumber = true;
//       blue = true;
//       endGame = false;
//     });
//   }
//
//   _handleClickButton1() {
//     setState(() {
//       i = i + 1;
//       star += 1;
//       showNumber = !showNumber;
//       blue = !blue;
//       if (i >= 20) endGame = !endGame;
//     });
//   }
//
//   _handleClickButton2() {
//     setState(() {
//       i = i + 2;
//       star += 2;
//       showNumber = !showNumber;
//       blue = !blue;
//       if (i >= 20) endGame = !endGame;
//     });
//   }
//
//   _handleClickButton3() {
//     setState(() {
//       i = i + 3;
//       star += 3;
//       showNumber = !showNumber;
//       blue = !blue;
//       if (i >= 20) endGame = !endGame;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     List<Widget> iconList = [];
//     for (var j = 0; j < star; j++) {
//       iconList.add(Icon(
//         Icons.star,
//         color: Colors.deepPurple,
//         size: 25.0,
//       ));
//     }
//     for (var i = 0; i < (20 - star); i++) {
//       iconList.add(Icon(
//         Icons.star_border,
//         color: Colors.deepPurple,
//         size: 25.0,
//       ));
//     }
//
//     return Scaffold(
//       body: Container(
//           decoration: const BoxDecoration(
//             image: const DecorationImage(
//               image: const AssetImage("assets/images/op.png"),
//               fit: BoxFit.fill,
//             ),
//           ),
//           child: SafeArea(
//             child: Container(
//               child: !endGame
//                   ? Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 15.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                   !showNumber
//                   ? Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: _handleClickButton3,
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.pink,
//                         fixedSize: Size(110, 50),
//                       ),
//                       child: Text('3',
//                           style: TextStyle(fontSize: 30.0)),
//                     ),
//                     ElevatedButton(
//                       onPressed: _handleClickButton2,
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.pink,
//                         fixedSize: Size(110, 50),
//                       ),
//                       child: Text('2',
//                           style: TextStyle(fontSize: 30.0)),
//                     ),
//                     ElevatedButton(
//                       onPressed: _handleClickButton1,
//                       style: ElevatedButton.styleFrom(
//                         primary: Colors.pink,
//                         fixedSize: Size(110, 50),
//                       ),
//                       child: Text('1',
//                           style: TextStyle(fontSize: 30.0)),
//                     ),
//                   ],
//                 )
//                     : Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey.shade400,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('3',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey.shade400,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('2',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey.shade400,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('1',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       children: [for (var item in iconList) item],
//                     ),
//                     Column(
//                       children: [
//                         !showNumber
//                             ? Icon(
//                           Icons.keyboard_arrow_up,
//                           size: 100.0,
//                           color: Colors.pink,
//                         )
//                             : Icon(
//                           Icons.keyboard_arrow_up,
//                           size: 100.0,
//                           color: Colors.grey.shade400,
//                         ),
//                         Text(i.toString(),
//                             style: TextStyle(fontSize: 150.0)),
//                         !showNumber
//                             ? Icon(
//                           Icons.keyboard_arrow_down,
//                           size: 100.0,
//                           color: Colors.grey.shade400,
//                         )
//                             : Icon(
//                           Icons.keyboard_arrow_down,
//                           size: 100.0,
//                           color: Colors.blue,
//                         ),
//                       ],
//                     ),
//                     SizedBox(width: 25.0),
//                   ],
//                 ),
//               ),
//               showNumber
//                   ? Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: _handleClickButton1,
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.blue,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('1',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: _handleClickButton2,
//                     style: ElevatedButton.styleFrom(
//                         primary: Colors.blue,
//                         fixedSize: Size(110, 50)),
//                     child: Text('2',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: _handleClickButton3,
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.blue,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('3',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                 ],
//               )
//                   : Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey.shade400,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('1',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey.shade400,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('2',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.grey.shade400,
//                       fixedSize: Size(110, 50),
//                     ),
//                     child: Text('3',
//                         style: TextStyle(fontSize: 30.0)),
//                   ),
//                 ],
//               ),
//               ],
//             ),
//           )
//               : Padding(
//       padding: const EdgeInsets.symmetric(vertical: 15.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey.shade400,
//                   fixedSize: Size(110, 50),
//                 ),
//                 child: Text('3',
//                     style: TextStyle(fontSize: 30.0)),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey.shade400,
//                   fixedSize: Size(110, 50),
//                 ),
//                 child: Text('2',
//                     style: TextStyle(fontSize: 30.0)),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey.shade400,
//                   fixedSize: Size(110, 50),
//                 ),
//                 child: Text('1',
//                     style: TextStyle(fontSize: 30.0)),
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Column(
//                 children: [
//                   !blue
//                       ? Text('RED',
//                       style: TextStyle(
//                           fontSize: 80.0,
//                           fontWeight: FontWeight.bold,
//                           shadows: [
//                             Shadow(
//                                 color: Colors.black
//                                     .withOpacity(0.3),
//                                 offset: Offset(10, 10),
//                                 blurRadius: 15),
//                           ]))
//                       : Text('BLUE',
//                       style: TextStyle(
//                           fontSize: 80.0,
//                           fontWeight: FontWeight.bold,
//                           shadows: [
//                             Shadow(
//                                 color: Colors.black
//                                     .withOpacity(0.3),
//                                 offset: Offset(10, 10),
//                                 blurRadius: 15),
//                           ])),
//                   Text('WIN!',
//                       style: TextStyle(
//                           fontSize: 60.0,
//                           fontWeight: FontWeight.bold,
//                           shadows: [
//                             Shadow(
//                                 color: Colors.black
//                                     .withOpacity(0.3),
//                                 offset: Offset(10, 10),
//                                 blurRadius: 15),
//                           ])),
//                   SizedBox(height: 20.0),
//                   OutlinedButton(
//                     onPressed: _newGame,
//                     child: Text('NEW GAME',
//                         style: TextStyle(fontSize: 15.0)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey.shade400,
//                   fixedSize: Size(110, 50),
//                 ),
//                 child: Text('1',
//                     style: TextStyle(fontSize: 30.0)),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey.shade400,
//                   fixedSize: Size(110, 50),
//                 ),
//                 child: Text('2',
//                     style: TextStyle(fontSize: 30.0)),
//               ),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   primary: Colors.grey.shade400,
//                   fixedSize: Size(110, 50),
//                 ),
//                 child: Text('3',
//                     style: TextStyle(fontSize: 30.0)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     ),
//     ),
//     )),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CountGame(),
    );
  }
}

class CountGame extends StatefulWidget {
  const CountGame({Key? key}) : super(key: key);

  @override
  _CountGameState createState() => _CountGameState();
}

class _CountGameState extends State<CountGame> {
  List<int> listBlue = [1, 2, 3];
  List<int> listRed = [3, 2, 1];
  var count = 0;
  bool teamAlternativeBlue = true;
  bool teamAlternativeRed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: const DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.fill),
        ),
        child: SafeArea(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listRed.map((item) {
                    return _buildButtonRed(item);
                  }).toList(),
                ),
                Row(children: [
                  Expanded(
                    child: count < 20 ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        for (var i = 0; i < count; i++) _buildStar(),
                        for (var i = 0; i < 20 - count; i++) _buildStarBorder()
                      ],
                    ):Column(),
                  ),
                  Expanded(
                    flex: 2,
                    child: count < 20
                        ? Column(
                      children: [
                        teamAlternativeRed
                            ? Icon(
                          Icons.keyboard_arrow_up,
                          size: 100.0,
                        )
                            : Icon(
                          Icons.keyboard_arrow_up,
                          size: 100.0,
                          color: Colors.black12,
                        ),
                        Text(
                          "$count",
                          style: TextStyle(fontSize: 150.0),
                        ),
                        teamAlternativeBlue
                            ? Icon(
                          Icons.keyboard_arrow_down,
                          size: 100.0,
                        )
                            : Icon(
                          Icons.keyboard_arrow_down,
                          size: 100.0,
                          color: Colors.black12,
                        ),
                      ],
                    )
                        : Column(
                      children: [
                        !teamAlternativeBlue
                            ? Center(
                          child: Text(
                            "RED",
                            style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                            : Center(
                          child: Text(
                            "BLUE",
                            style: TextStyle(
                                fontSize: 70.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Center(
                          child: Text("win !",
                              style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Center(
                            child: Padding(
                              padding: EdgeInsets.only(top: 60.0),
                              child: _buildNewGame(),
                            ))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(),
                  ),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: listBlue.map((item) {
                    return _buildButtonBlue(item);
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonRed(int i) {
    return SizedBox(
      width: 130,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: teamAlternativeRed && count < 20
            ? ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          onPressed: () => _handleClickTopButton(i),
          child: Text(
            '$i',
            style: TextStyle(fontSize: 40.0),
          ),
        )
            : ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
          ),
          onPressed: (null),
          child: Text(
            '$i',
            style: TextStyle(fontSize: 40.0),
          ),
        ),
      ),
    );
  }

  Widget _buildButtonBlue(int i) {
    return SizedBox(
      width: 130,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: teamAlternativeBlue && count < 20
              ? ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: () => _handleClickBottomButton(i),
            child: Text(
              '$i',
              style: TextStyle(fontSize: 40.0),
            ),
          )
              : ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
            ),
            onPressed: (null),
            child: Text(
              '$i',
              style: TextStyle(fontSize: 40.0),
            ),
          )),
    );
  }

  Widget _buildNewGame() {
    return OutlinedButton(
      onPressed: (_handleClickNewGame),
      child: Text(
        'NEW GAME',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  Widget _buildStarBorder() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Icon(
        Icons.star_border,
        color: Colors.blue,
      ),
    );
  }

  Widget _buildStar() {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Icon(
        Icons.star,
        color: Colors.blue,
      ),
    );
  }

  _handleClickNewGame() {
    setState(() {
      count = 0;
      teamAlternativeBlue = true;
      teamAlternativeRed = false;
    });
  }

  _handleClickTopButton(int i) {
    teamAlternativeRed = !teamAlternativeRed;
    teamAlternativeBlue = !teamAlternativeBlue;
    setState(() {
      count = count + i;
    });
  }

  _handleClickBottomButton(int i) {
    teamAlternativeBlue = !teamAlternativeBlue;
    teamAlternativeRed = !teamAlternativeRed;
    setState(() {
      count = count + i;
    });
  }
}