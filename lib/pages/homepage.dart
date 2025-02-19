import 'package:descison_app/pages/addDecision.dart';
import 'package:descison_app/pages/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex=0;
  PageController pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:const Text('Decison app'),
       backgroundColor: Colors.black,
       centerTitle: true,
       actions: [
        IconButton(onPressed: ()async{
          await FirebaseAuth.instance.signOut();
        }, icon:const Icon(Icons.home))
       ],
      ),
      body:PageView(
        controller:pageController ,
        children: const [
          DashBoard(),
          AddDecision(),
        ],
      )
    );
  }
}