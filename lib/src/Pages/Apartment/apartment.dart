
import 'package:application1/src/Pages/Apartment/apart1.dart';
import 'package:application1/src/Pages/Apartment/apart2.dart';
import 'package:application1/src/Pages/condo/condo1.dart';
import 'package:application1/src/Pages/condo/condo2.dart';
import 'package:flutter/material.dart';




class apartment extends StatelessWidget  {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Apartment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => apart1()));
                  },
                  child: Container(

                    width: 150,
                    height: 80,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/ho1.jpg'),
                          scale: 1),
                    ),
                  ),
                ),

                Text(
                  'บ้านสลิล อพาร์ทเมนท์',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => apart2()));
                  },
                  child: Container(
                    width: 150,
                    height: 80,
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      image: DecorationImage(
                          image: AssetImage('assets/images/ho2.jpg'),
                          scale: 1),
                    ),
                  ),
                ),
                Text(
                  'ศิริสุข อพาร์ทเมนท์',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),



          ],
        ),
      ),
    );

  }}