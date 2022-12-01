import 'dart:async';

import 'package:flutter/material.dart';

import '../authentication/auth_screen.dart';
//import 'package:foodpanda_sellers_app/authentication/auth_screen.dart';

class mySplashScreen extends StatefulWidget {
  const mySplashScreen({Key? key}) : super(key: key);

  @override
  State<mySplashScreen> createState() => _mySplashScreenState();
}

class _mySplashScreenState extends State<mySplashScreen> {

  startTimer()
  {
    Timer(const Duration(seconds: 8), () async{
      Navigator.push(context, MaterialPageRoute(builder: (c)=>const Authscreen()));
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/splash.jpg"),

              const SizedBox(height: 10,),

              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sell Food Online",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 40,
                    fontFamily: "Signature",
                    letterSpacing: 3,
                  ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
