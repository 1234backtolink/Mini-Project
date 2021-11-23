import 'package:flutter/material.dart';

class dorminfo1 extends StatelessWidget {
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
              'เจพี หอพักหญิง',
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
            Image.asset('assets/images/hoo2.jpg'),
            Text(
              '90 187 Karnjanavanit Soi 23 Rd, Khao Rup Chang, Mueang Songkhla District, Songkhla 90000 โทรศัพท์: 081 599 3755 ',
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


