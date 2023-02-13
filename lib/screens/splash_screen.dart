import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nectar/screens/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),
    () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => const StartScreen()))));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 99, 205, 129),
      body: Center(
        child: SizedBox(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/carrot.png"),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text('nectar',
                  style: TextStyle(color: Colors.white,
                  fontSize: 65,fontWeight: FontWeight.w400),),
                  const Text('online groceriet',
                  style: TextStyle(color: Colors.white,
                  letterSpacing: 5),),
                ],
              ),
            ],
          ),
        ),
      ),      
    );
  }
}