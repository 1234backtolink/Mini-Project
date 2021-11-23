
import 'package:application1/src/Info/info1.dart';
import 'package:application1/src/Pages/Apartment/apartment.dart';
import 'package:application1/src/Pages/Dormitory/dorm1.dart';
import 'package:application1/src/Pages/Dormitory/dorm2.dart';
import 'package:application1/src/Pages/Dormitory/dormitory.dart';
import 'package:application1/src/Pages/Register/register.dart';
import 'package:application1/src/Pages/condo/Condo.dart';
import 'package:application1/src/Pages/condo/condo1.dart';
import 'package:application1/src/Pages/condo/condo2.dart';
import 'package:application1/src/Pages/condo/condo3.dart';
import 'package:application1/src/Pages/pages.dart';

import 'package:flutter/material.dart';


class AppRoute{
  static const homeRoute = 'home';
  static const register = 'register';
  static const loginRoute = 'login';
  static const apartmentRoute = 'apartment';
  static const condoRoute = 'condo';
  static const dormitoryRoute = 'dormitory';
  static const infoRoute = 'info1';
  static const condo1Route = 'condo1';
  static const condo2Route = 'condo2';
  static const condo3Route = 'condo3';
  static const dormRoute = 'dorm1';
  static const dorm1Route = 'dorm2';
  static const dorm2Route = 'dorm3';


  final _route = <String, WidgetBuilder>{
    homeRoute: (comtext) => MainPage(),
    apartmentRoute :(comtext) => apartment(),
    loginRoute: (comtext) => LoginPage(),
    register: (comtext) => RegisterScreen(),
    dormitoryRoute: (comtext) => dormitory(),
    infoRoute: (comtext) => InfoPage(),
    condo1Route: (comtext) => condo1(),
    condo2Route: (comtext) => condo2(),
    condo3Route: (comtext) => condo3(),
    dormRoute: (comtext) => dorm1(),
    dorm1Route: (comtext) => dorm2(),




  };

  get getAll => _route;
}//end class