import 'dart:async';

import 'package:descison_app/Utlis/colors.dart';
import 'package:descison_app/auth/login.dart';
import 'package:descison_app/auth/sinup.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), (){
       Navigator.pushReplacement(context, 
       MaterialPageRoute(builder: (context)=>const Singup()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
    gradient: LinearGradient(
      colors: [Color(0xFFB2EBF2), Color(0xFFE0F7FA)], 
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  ),
        child:const Center(child: Text("Decision App",
        style: TextStyle(
          fontSize: 30,fontWeight: FontWeight.w700
          ),)),
      ) ,
    );
  }
}