import 'package:flutter/material.dart';

class mansioninfo2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

            SizedBox(
              height: 20,
            ),

            Text(
              'พิมพ์ณดา แมนชั่น สงขลา',
              textAlign: TextAlign.end,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Image.asset('assets/images/mansion3.jpg'),
            Text(
              '88/8 ถนนกาญจนวนิช ซอย 21 เขารูปช้าง เมือง Songkhla 90000 โทรศัพท์: 080 784 3666',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),

          ],
        ),
      ),
    );
  }
}


