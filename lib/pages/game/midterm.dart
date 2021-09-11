import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OLYMPIC BOXING SCORING',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Midterm(),
    );
  }
}

class Midterm extends StatefulWidget {
  const Midterm({Key? key}) : super(key: key);

  @override
  _Midterm createState() => _Midterm();
}

class _Midterm extends State<Midterm> {
  var count = 0;
  bool teamThailand = true;
  bool teamIreland = false;
  var i=0;
  Widget _buildNewGame() {
    return OutlinedButton(
      onPressed: (_handleClickNewGame),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Colors.red.shade900,
            padding: EdgeInsets.symmetric(horizontal: 200.0, vertical: 10.0),
          ),
          child: Icon(
            Icons.clear,
            size: 80.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  _handleClickNewGame() {
    setState(() {
      count = 0;
      teamThailand = true;
      teamIreland = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OLYMPIC BOXING SCORING'),
        backgroundColor: Colors.red.shade900,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage(
                      'assets/images/logo.png',
                    ),
                    height: 100,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Women's Light (57-60kg) Semi-final",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.person,
                    size: 120.0,
                    color: Colors.red.shade900,
                  ),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assets/images/flag_ireland.png',), width :50,height: 50,
                              ),
                            ),
                            Text("IRELAND", style: TextStyle(fontSize: 20,),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text("  HARRINGTON Kellie Anne", style: TextStyle(fontSize: 20,),)
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person, size: 120.0, color: Colors.blue.shade900,),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assets/images/flag_thailand.png',),width: 50, height: 50,
                              ),
                            ),
                            Text("THAILAND", style: TextStyle(fontSize: 20,),)
                          ],
                        ),
                        Row(
                          children: [
                            Text("  SEESONDEE Sudaporn", style: TextStyle(fontSize: 20,),)
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 20.0,
              child: Row(children: [
                Expanded(child: Container(color: Colors.red.shade900,)),
                Expanded(child: Container(color: Colors.blue.shade900,)),
              ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text("Round1")
                  ,
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red.shade900,
                        padding: EdgeInsets.symmetric(
                            horizontal: 200.0, vertical: 10.0),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      onPressed:(){},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue.shade900,
                        padding: EdgeInsets.symmetric(
                            horizontal: 200.0, vertical: 10.0),
                      ),
                      child: Icon(
                        Icons.person,
                        size: 80.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}