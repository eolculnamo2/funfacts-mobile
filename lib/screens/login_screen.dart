import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_facts_mobile/api/users_api.dart';
import 'package:fun_facts_mobile/constants/style_constants.dart';

class _LoginScreenState extends State<LoginScreen> {
  String username;
  String password;

  void login() async {
    UsersApi usersApi = new UsersApi();
    await usersApi.login(username, password);
    Navigator.of(context).pushNamed('/dashboard');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Container (
        margin: EdgeInsets.all(StyleConstants.PAGE_MARGIN),
        child: Column (
          children: [
            Text("Login Page"),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Username"
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Username cannot be empty";
                }
                return null;
              },
              onChanged: (text) {
                setState(() {
                  username = text.trim();
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password"
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return "Password cannot be empty";
                }
                return null;
              },
              obscureText: true,
              onChanged: (text) {
                password = text.trim();
              },
            ),
            RaisedButton(
              onPressed: () {
                login();
              },
              child: Text("Login")
            ),
            RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/register');
                },
                child: Text("Create Account"),
            ),
          ]
        )
      )
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() =>  _LoginScreenState();
}