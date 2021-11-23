import 'package:application1/src/Map/map.dart';
import 'package:application1/src/Map/mapMansion2.dart';
import 'package:application1/src/Pages/Dormitory/dorminfo.dart';
import 'package:application1/src/Pages/Mansion/mansioninfo2.dart';
import 'package:flutter/material.dart';

class mansion2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(

        length: 2,

        child: Scaffold(


          appBar: AppBar(

            title: Text('พิมพ์ณดา แมนชั่น สงขลา'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: 'ข้อมูล', icon: Icon(Icons.info_outline),),
                Tab(text: 'Map', icon: Icon(Icons.map),),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              mansioninfo2(),
              mapmansion2()


            ],
          ),


        ),

      );
}