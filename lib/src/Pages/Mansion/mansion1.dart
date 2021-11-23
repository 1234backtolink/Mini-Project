import 'package:application1/src/Map/map.dart';
import 'package:application1/src/Map/mapMansion.dart';
import 'package:application1/src/Pages/Dormitory/dorminfo.dart';
import 'package:application1/src/Pages/Mansion/mansioninfo1.dart';
import 'package:flutter/material.dart';

class mansion1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(

        length: 2,

        child: Scaffold(


          appBar: AppBar(

            title: Text('ฉัตรเพชรแมนชั่น'),
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
              mansioninfo1(),
              mapmansion()


            ],
          ),


        ),

      );
}