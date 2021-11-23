

import 'package:application1/src/Pages/Apartment/apartment.dart';
import 'package:application1/src/Pages/Dormitory/dormitory.dart';
import 'package:application1/src/Pages/Mansion/mansion.dart';
import 'package:application1/src/Pages/condo/Condo.dart';
import 'package:flutter/material.dart';

class Roomtype extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Scaffold(

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
                          builder: (context) => Condo()));
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
                            image: AssetImage('assets/images/condo.png'),
                            scale: 1),
                      ),
                    ),
                  ),

                  Text(
                    'คอนโดมิเนียม',
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
                              builder: (context) => apartment()));
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
                            image: AssetImage('assets/images/apart.png'),
                            scale: 1),
                      ),
                    ),
                  ),
                  Text(
                    'อพาร์ทเมนท์',
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
                              builder: (context) => mansion()));
                    },
                    child: Container(
                      width: 150,
                      height: 80,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/appartment.png'),
                            scale: 1),
                      ),
                    ),
                  ),
                  Text(
                    'แมนชั่น',
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
                              builder: (context) => dormitory()));
                    },
                    child: Container(
                      width: 150,
                      height: 80,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                        ),
                        image: DecorationImage(
                            image: AssetImage('assets/images/office-building.png'),
                            scale: 1),
                      ),
                    ),
                  ),
                  Text(
                    'หอพัก',
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

}