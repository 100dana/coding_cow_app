/*
 * edit: 2024-06-08
 * 딩카 문제 화면 - 코드
 */


import 'package:coding_cow_app/data.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';

class Problem_Code_Part extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container( // code part
      alignment: FractionalOffset(0.5, 0.85),
      child: FractionallySizedBox(
        widthFactor: 0.75,
        heightFactor: 0.72,
        child: Container(
          padding: EdgeInsets.all(20),
          // problems[0][4]는 object형이므로 toString() 으로 String형으로 바꿔야함
          child: Text(problems[problem_no][4].toString()),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      ),
    ); // end of code part
  }
}