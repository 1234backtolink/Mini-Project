import 'package:flutter/material.dart';

class apartinfo extends StatelessWidget {
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
              'บ้านสลิล อพาร์ทเมนท์ ',
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
            Image.asset('assets/images/apart1.jpg'),
            Text(
              '94, 24 หมู่ที่ 10 Karnjanavanit Soi 11 Rd, เขารูปช้าง Mueang Songkhla District, Songkhla 90000 โทรศัพท์: 095 430 7642',
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


