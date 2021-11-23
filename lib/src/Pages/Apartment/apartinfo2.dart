import 'package:flutter/material.dart';

class apartinfo2 extends StatelessWidget {
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
              'ศิริสุข อพาร์ทเมนท์ ',
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
            Image.asset('assets/images/apart2.jpg'),
            Text(
              'ศิริสุข อพาร์ทเมนท์ 60/128 Kanjanavanich Rd, Khao Rup Chang, Mueang Songkhla District, Songkhla 90000 โทรศัพท์: 081 767 5551',
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


