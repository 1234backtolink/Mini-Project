

import 'package:application1/src/Pages/Home/HomePage.dart';
import 'package:application1/src/Pages/Login/login_page.dart';
import 'package:application1/src/Pages/config/app_route.dart';
import 'package:application1/src/Pages/config/app_setting.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';






class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoute().getAll,
      theme: ThemeData(primaryColor: Colors.amber),
      home: FutureBuilder(
        future: SharedPreferences.getInstance(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Container(
              color: Colors.white,
            );
          } else {
            final token =
            snapshot.data.getString(AppSetting.userNameSetting ?? '');
            if (token != null) {
              return MainPage();
            } else {
              //return LoginPage();
              return LoginPage();
            }
          }
        },
      ),
    );
  }
} //end class
