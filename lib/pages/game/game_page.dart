import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatelessWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var num = Random().nextInt(100) + 1;
    return Scaffold(
      appBar: AppBar(
        title: Text('GUESS THE NUMBER'),
      ),
      body: Container(
        color: Colors.amber.shade50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.person,       // รูปไอคอน
                  size: 80.0,         // ขนาดไอคอน
                  color: Colors.blue, // สีไอคอน
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('คฑากาญจน์ ทรัพย์เสริม'),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star,
                          size: 20.0,
                          color: Colors.orange,
                        ),
                        Icon(
                          Icons.star_border,
                          size: 20.0,
                          color: Colors.orange,
                        ),

                      ],
                    )
                  ]
                ),


              ],
            ),

            Text('${Random().nextInt(100)}',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 100.0, color: Colors.orange)),
            ElevatedButton(
              onPressed: () {},
              child: Text('RANDOM',textAlign: TextAlign.center,),
            ),
            // Text('Pon\d', textAlign: TextAlign.center),
            // Text('Pond', textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
