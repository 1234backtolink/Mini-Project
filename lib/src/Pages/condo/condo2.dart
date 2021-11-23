import 'package:application1/src/Map/map.dart';
import 'package:application1/src/Map/mapcondo1.dart';
import 'package:application1/src/Map/mapcondo2.dart';
import 'package:application1/src/Pages/Dormitory/dorminfo.dart';
import 'package:flutter/material.dart';

import 'condoinfo.dart';
import 'condoinfo1.dart';

class condo2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(

        length: 2,

        child: Scaffold(


          appBar: AppBar(

            title: Text('The Aura Urban Life'),
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
              condoinfo1(),
              Mapcondo2()


            ],
          ),


        ),

      );
}