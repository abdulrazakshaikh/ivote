import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> with TickerProviderStateMixin{

bool _existinguser = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Text('lorem ipsum dolor sit amet is a simply dummy text used for typesetting')
    );
  }
}
