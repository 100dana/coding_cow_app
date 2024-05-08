import 'package:flutter/material.dart';
import 'package:coding_cow_app/widgets/result_status.dart';

class Result_Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded( // problem body
      flex: 4,
      child: Container( // background of problem body
        child: Stack(
          children: [
            Container(
              alignment: FractionalOffset(0.9, 0.005),
              child: FractionallySizedBox(
                // widthFactor: 0.25,
                child: Container(
                  child: Text( // period
                    "6개월 뒤 복습",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ), // end of period
                  padding: EdgeInsets.only(left: 10, top: 5, right: 10, bottom: 5),
                  decoration: BoxDecoration(
                    color: Color(0xff2355DA),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                ),
              ),
            ),
            Container(
              alignment: FractionalOffset(0.2, 0.01),
              child: FractionallySizedBox( // level
                child: Text(
                  "Lv.???",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ), // end of level
            ),
            Container( // problem type
              alignment: FractionalOffset(0.84, 0.16),
              child: FractionallySizedBox(
                child: Text(
                  "단답형 문제",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ), // end of problem type
            Result_Status(),
          ],
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('icon/problem_bg.png'),
            fit: BoxFit.contain,
          ),
        ),
      ), // end of background of problem body
    ); // end of problem body
  }
}