import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fun_facts_mobile/api/users_api.dart';
import 'package:fun_facts_mobile/constants/style_constants.dart';
import 'package:fun_facts_mobile/dto/register_dto.dart';

class _RegisterScreenState extends State<RegisterScreen> {
  String username;
  String avatar;
  String password;
  String confirmPassword;
  String firstName;
  String lastName;
  String email;

  void register() {
    RegisterDto registerDto = RegisterDto(username, avatar, password, firstName, lastName, email);
    UsersApi usersApi = new UsersApi();
    usersApi.register(registerDto);
  }


  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text("Register"),
      ),
      body: SingleChildScrollView(
        child: Container (
          margin: EdgeInsets.all(StyleConstants.PAGE_MARGIN),
          child: Column (
            children: [
              Text("Registration"),
              TextFormField (
                decoration: InputDecoration (
                  hintText: "Username"
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Username cannot be empty";
                  }
                  return null;
                },
                onChanged: (text) {
                  username = text.trim();
                },
              ),
              TextFormField (
                decoration: InputDecoration (
                    hintText: "Avatar"
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Avatar cannot be empty";
                  }
                  return null;
                },
                onChanged: (text) {
                  avatar = text.trim();
                },
              ),
              TextFormField (
                decoration: InputDecoration (
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
              TextFormField (
                decoration: InputDecoration (
                    hintText: "Confirm Password"
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Confirm Password cannot be empty";
                  }

                  if (value != password) {
                    return "Password and Confirm Password do not match";
                  }

                  return null;
                },
                obscureText: true,
                onChanged: (text) {
                  confirmPassword = text.trim();
                },
              ),
              TextFormField (
                decoration: InputDecoration (
                    hintText: "First Name"
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "First Name cannot be empty";
                  }
                  return null;
                },
                onChanged: (text) {
                  firstName = text.trim();
                },
              ),
              TextFormField (
                decoration: InputDecoration (
                    hintText: "Last Name"
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Last Name cannot be empty";
                  }
                  return null;
                },
                onChanged: (text) {
                  lastName = text.trim();
                },
              ),
              TextFormField (
                decoration: InputDecoration (
                    hintText: "Email"
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Email cannot be empty";
                  }
                  return null;
                },
                onChanged: (text) {
                  email = text.trim();
                },
              ),
              RaisedButton(
                onPressed: () {
                  register();
                },
                child: Text("Register"),
              )
            ]
          )
        ),
      ),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}