import 'package:application1/src/Map/map.dart';
import 'package:application1/src/Pages/Login/login_page.dart';
import 'package:flutter/material.dart';

import 'src/Pages/pages.dart';

void main() =>runApp(myApp());

class myApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );

  }
}

