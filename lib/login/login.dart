import 'package:flutter/material.dart';
import 'package:uno_kart/pages/homepage.dart';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _mnocontroller;

  TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            controller: _mnocontroller,
            decoration: InputDecoration(
              hintText: 'Mobile Number',
            ),
          ),
          TextFormField(
            obscureText: true,
            controller: _passwordController,
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FlatButton(
            height: 45,
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => HomePage()));
            },
            child: Text(
              "SIGN IN",
              style: TextStyle(color: Colors.white),
            ),
            color: Color(0xffcf91ff),
          )
        ],
      ),
    );
  }
}