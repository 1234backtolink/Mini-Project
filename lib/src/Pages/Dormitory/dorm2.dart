import 'package:application1/src/Map/map.dart';
import 'package:application1/src/Map/map2.dart';
import 'package:application1/src/Pages/Dormitory/dorminfo.dart';
import 'package:flutter/material.dart';

import 'dorminfo1.dart';

class dorm2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(

        length: 2,

        child: Scaffold(


          appBar: AppBar(

            title: Text('เจพี หอพักหญิง'),
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
              dorminfo1(),
              MapSample1()


            ],
          ),


        ),

      );
}