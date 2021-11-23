import 'package:another_flushbar/flushbar.dart';
import 'package:application1/src/services/network.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool isHidden = false;

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _surnameController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _surnameController.dispose();

    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/login.jpg'))),
      ),
      Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Register สมัครสมาชิก',
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.supervised_user_circle),
                      labelText: 'ID ',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.drive_file_rename_outline),
                      labelText: 'Name ',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _surnameController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.drive_file_rename_outline),
                      labelText: 'Lastname ',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      labelText: 'Password ',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(onPressed: () async {})
              ]))
    ]));
  }
}
