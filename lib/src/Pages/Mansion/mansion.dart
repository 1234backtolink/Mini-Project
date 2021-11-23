
import 'package:application1/src/Pages/Mansion/mansion1.dart';
import 'package:application1/src/Pages/Mansion/mansion2.dart';
import 'package:application1/src/Pages/condo/condo1.dart';
import 'package:flutter/material.dart';



class mansion extends StatelessWidget  {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Mansion'),
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
                            builder: (context) => mansion1()));
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
                  'ฉัตรเพชรแมนชั่น',
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
                            builder: (context) => mansion2()));
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
                  'พิมพ์ณดา แมนชั่น สงขลา',
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