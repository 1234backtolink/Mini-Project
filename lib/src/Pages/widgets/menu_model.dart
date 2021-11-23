import 'package:application1/src/Info/info1.dart';
import 'package:application1/src/Info/info2.dart';
import 'package:application1/src/Pages/config/app_route.dart';

import 'package:flutter/material.dart';
class Menu {
  final String title;
  final IconData icon;
  final Color iconColor;
  final Function(BuildContext context) onTap;


  const Menu({
    this.title,
    this.icon,
    this.iconColor = Colors.grey,
    this.onTap,
  });
}


class MenuViewModel {
  MenuViewModel();


  List<Menu> get items => <Menu>[
    Menu(
      iconColor: Colors.red,
      title: 'Abdulloh Bilsen',
      icon: Icons.person,
      onTap: (context) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => InfoPage()));
      },
    ),

    Menu(
      iconColor: Colors.red,
      title: 'Fasila Pohmad',
      icon: Icons.person,
      onTap: (context) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => InfoPage2()));
      },
    ),





  ];
}