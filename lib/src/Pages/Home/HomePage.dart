import 'package:application1/src/Pages/Login/login_page.dart';
import 'package:application1/src/Pages/RoomtypePage/Roomtype.dart';
import 'package:application1/src/Pages/RoomtypePage/compare.dart';
import 'package:application1/src/Pages/RoomtypePage/rent.dart';
import 'package:application1/src/Pages/config/app_setting.dart';
import 'package:application1/src/Pages/widgets/menu_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();

}




class _MainPageState extends State<MainPage> {


  @override
  Widget build(BuildContext context) =>DefaultTabController(

    length: 3,

        child: Scaffold(


          drawer: Drawer(
            child: Column(
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/info1.jpg'),
                  ),

                  accountName: Text('Adbulloh Bilsen '),
                  accountEmail: Text('Fasila Pohmad'),
                  decoration: BoxDecoration(

                    color: Colors.lightBlue,
                  ),
                ),

                ...MenuViewModel()
                    .items
                    .map((e) => ListTile(
                  leading: Icon(
                    e.icon,
                    color: e.iconColor,
                  ),
                  title: Text(e.title),
                  onTap: () {
                    e.onTap(context);
                  },
                ))
                    .toList(),
                Spacer(),

                ListTile(

                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.red,
                  ),

                  title: const Text('Logout'),
                  onTap: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    prefs.remove(AppSetting.userNameSetting);
                    prefs.remove(AppSetting.passwordSetting);
                    Navigator.push(context, new MaterialPageRoute(
                        builder: (context) =>
                        LoginPage())
                    );},
                ),
              ],
            ),
          ),

          appBar: AppBar(

            title: Text('HOME'),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: 'ประเภทห้องเช่า',icon: Icon(Icons.home),),
                Tab(text: 'เปรียบเทียบราคา',icon: Icon(Icons.star),),
                Tab(text: 'เพิ่มห้องเช่า',icon: Icon(Icons.person),)

              ],
            ),
          ),
          body: TabBarView(
            children: [
              Roomtype(),
              compare(),
              rents()




            ],
          ),


        ),

  );



  }
