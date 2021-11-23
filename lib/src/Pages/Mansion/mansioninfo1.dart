import 'package:flutter/material.dart';

class mansioninfo1 extends StatelessWidget {
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
              'ฉัตรเพชรแมนชั่น',
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
            Image.asset('assets/images/mansion1.jpg'),
            Text(
              '42 88 Karnjanavanit Soi 7 Rd, Khao Rup Chang, Mueang Songkhla District, Songkhla 90000 โทรศัพท์: 081 897 1644',
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


