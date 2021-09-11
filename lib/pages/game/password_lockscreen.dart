import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LockScreen extends StatelessWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget _buildButton3(String s) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 70.0,
          height: 70.0,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.grey, width: 2.0),
          ),
          child: TextButton(
            onPressed: () {},
            child: Text(s,
                style: TextStyle(fontSize: 28.0, color: Colors.grey.shade600)),
          ),
        ),
      );
    }

    return Scaffold(
      body: Container(
        color: Colors.white60,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 70.0,
                    color: Colors.indigo.shade400,
                  ),
                  Text('กรุณาใส่รหัสผ่าน',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600)),

                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton3('1'),
                      _buildButton3('2'),
                      _buildButton3('3'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton3('4'),
                      _buildButton3('5'),
                      _buildButton3('6'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildButton3('7'),
                      _buildButton3('8'),
                      _buildButton3('9'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 55.0),
                      _buildButton3('0'),
                      Container(width: 25.0),
                      Icon(Icons.backspace_outlined,
                          size: 30.0, color: Colors.grey.shade600),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'ลืมรหัสผ่าน',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}