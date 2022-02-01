import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:i_vote/ui/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}


class SplashScreenState extends State<SplashScreen>  with TickerProviderStateMixin {

late AnimationController _controller;
late Animation<double> _animation;
  
 @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2), 
      reverseDuration: const Duration(seconds: 2), 
      vsync: this, 
      // value: 0.1,
      // lowerBound: 0.1,
      // upperBound: 1.0,
    )..repeat(reverse: true);
    _animation = CurvedAnimation(
      parent: _controller, 
      curve: Curves.fastOutSlowIn,       
      // reverseCurve: Curves.bounceOut
    );

    // _controller.forward();


    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement<void, void>(context, 
        MaterialPageRoute(
          // builder: (BuildContext context) => HomeScreen()
          builder: (BuildContext context) => Login()
          
        )
      );
    });
  }

  @override
    dispose() {
      _controller.dispose();
      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ScaleTransition(
                    scale: _animation,
                    child: Container(
                      height: 100, width: 100,
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        color : Colors.grey,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: Image.asset(
                        'images/icon.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  

                  FadeTransition(
                    opacity: _animation,
                    child:  RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'welcome to ',
                            style: Theme.of(context).textTheme.headline4!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.w300, color: Colors.black)),
                          ),
                          TextSpan(
                            text: 'i',
                            style: Theme.of(context).textTheme.headline4!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.bold, color: Colors.black)),
                          ),
                          TextSpan(
                            text: 'Vote',
                            style: Theme.of(context).textTheme.headline4!.merge(TextStyle(letterSpacing: 1.5, fontWeight: FontWeight.w100, color: Colors.black)),
                          ),
                          
                        ],
                      )
                    ),
                  ),

                ],
              )
            ),
            
            
          ],
        ),
      ),
    );
  }
}
