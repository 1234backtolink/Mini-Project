import 'package:flutter/material.dart';

class condoinfo1 extends StatelessWidget {
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
              'The Aura Urban Life',
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
            Image.asset('assets/images/TheLife.jpg'),
            Text(
              'ที่อยู่: ถนนกาญจนวนิช ซอย 2 สงขลา ใกล้ มหาวิทยาลัยทักษิณ ตำบล เขารูปช้าง เมืองสงขลา Songkhla 90000 โทรศัพท์: 080 234 2222',
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


