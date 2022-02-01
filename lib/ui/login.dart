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

 bool _obscureText = true;

  // String _password;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }


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
                      child: Text(
                        'Login to enter',
                        style: TextStyle(fontSize: 18, letterSpacing: 1.2, fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User ID',
                      ),
                    ),
                  ),
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    controller: passwordController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(4),
                                          bottomLeft: Radius.circular(4),
                                          topRight: Radius.circular(0),
                                          bottomRight: Radius.circular(0)
                                        )
                                      ),
                                      labelText: 'Password',
                                    ),
                                    obscureText: _obscureText,
                                  ),
                                ),
                                Container(
                                  height: 50, width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(0),
                                      bottomLeft: Radius.circular(0),
                                      topRight: Radius.circular(4),
                                      bottomRight: Radius.circular(4)
                                    ),
                                    border: Border.all(width: 1, color: Colors.grey),
                                    color: Colors.grey[200],
                                    
                                  ),
                                  child: TextButton(  
                                    onPressed: _toggle,
                                    style: TextButton.styleFrom(
                                      primary: Theme.of(context).colorScheme.primary,
                                      padding: EdgeInsets.zero,
                                    ),
                                    child: Icon(_obscureText ? Icons.visibility_outlined : Icons.visibility_off_outlined, color: Color(0xFF31313D)),
                                  ),
                                ),
                              ],
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
