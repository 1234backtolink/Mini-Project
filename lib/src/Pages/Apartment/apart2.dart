
import 'package:application1/src/Map/mapApart2.dart';
import 'package:application1/src/Pages/Apartment/apartinfo2.dart';
import 'package:flutter/material.dart';

class apart2 extends StatelessWidget {


  @override
  Widget build(BuildContext context) =>
      DefaultTabController(

        length: 2,

        child: Scaffold(


          appBar: AppBar(

            title: Text('ศิริสุข อพาร์ทเมนท์'),
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
              apartinfo2(),
              mapApart2()


            ],
          ),


        ),

      );
}