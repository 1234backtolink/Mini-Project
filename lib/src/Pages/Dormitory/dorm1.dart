import 'package:application1/src/Map/map.dart';
import 'package:application1/src/Pages/Dormitory/dorminfo.dart';
import 'package:flutter/material.dart';

class dorm1 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(

        length: 2,

        child: Scaffold(


          appBar: AppBar(

            title: Text('หอพักพิมพ์ใจแมนชั่น'),
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
              dorminfo(),
              MapSample()


            ],
          ),


        ),

      );
}