import 'package:application1/src/Pages/Home/HomePage.dart';
import 'package:application1/src/Pages/Register/register.dart';
import 'package:application1/src/Pages/config/app_setting.dart';

import 'package:application1/src/services/network.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:another_flushbar/flushbar.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
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
                  'Welcome to the application',
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
                      suffixIcon: Icon(Icons.email),
                      labelText: 'Username',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  controller: _passwordController,
                  obscureText: isHidden,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: isHidden
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: togglePasswordVisibility,
                      ),
                      labelText: 'Password',
                      filled: true,
                      fillColor: Colors.white70,
                      border: InputBorder.none),
                ),
                SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final username = _usernameController.text;
                    final password = _passwordController.text;
                    final name = _nameController.text;
                    final surname = _surnameController.text;

                    print('login with   $username   $password ');

                    final message = await NetworkService()
                        .validateUserLoginDio(username, password ,name ,surname);

                    if (message != 'failed') {
                      print('Loin success');
                      SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      prefs.setString(AppSetting.userNameSetting, username);
                      prefs.setString(AppSetting.passwordSetting, password);

                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) =>
                              MainPage())
                      );
                    } else {
                      print('Login failed');
                      Flushbar(
                        title: "Login Failed",
                        titleColor: Colors.red,
                        backgroundGradient: LinearGradient(
                            colors: [Colors.blueGrey, Colors.greenAccent]),
                        icon: Icon(
                          Icons.cancel_presentation,
                          size: 35,
                          color: Colors.amber,
                        ),
                        message: "wrong username & password, try again!!",
                        duration: Duration(seconds: 5),
                      )..show(context);
                    }
                  },
                  child: Text('LOGIN'),
                  style: ElevatedButton.styleFrom(primary: Color(0XFFF90a4ae)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Color(0XFFF90a4ae)),
                  child: Text('Register'),
                    onPressed: (){
                      Navigator.push(context, new MaterialPageRoute(
                          builder: (context) =>
                              RegisterScreen())
                      );
                    },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void togglePasswordVisibility() => setState(() => isHidden = !isHidden);
}
