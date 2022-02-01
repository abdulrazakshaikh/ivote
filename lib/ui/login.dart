import 'dart:ui';

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

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Padding(
       padding: EdgeInsets.all(10),
       child: Center(
        child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text('iVote'.toUpperCase(),
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.w900, fontSize: 30),
              )
            ),
            Card(
              elevation: 3,
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 25),
                      child: const Text(
                        'Login to enter',
                        style: TextStyle(fontSize: 20, letterSpacing: 1.2, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User ID',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 64,
                      padding: EdgeInsets.all(10),
                      child: ElevatedButton(
                        onPressed: (){}, 
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).colorScheme.primary, 
                          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 17),
                          alignment: Alignment.center,
                        ),
                        child: Text('LOGIN',
                          style: Theme.of(context).textTheme.headline6!.merge(
                            TextStyle(color: Colors.white, letterSpacing: 1.2,)
                          ),
                        ),
                      ),
                  ),

                ],
              ),
            )
            
          ],
        )
      ),
     )
     
     
     
    );
  }
}
