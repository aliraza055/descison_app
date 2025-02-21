import 'package:descison_app/Utlis/colors.dart';
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
  void ontapped(int index){
    setState(() {
      selectedIndex=index;
    }
    );
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title:const Text('Decison app'),
       backgroundColor:AppColors().primary,
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
      ),
      bottomNavigationBar: BottomNavigationBar(items: 
      const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'dashboard'),
        BottomNavigationBarItem(icon: Icon(Icons.add),label: 'add decision'),
      ],
      currentIndex:selectedIndex ,
      selectedItemColor: AppColors().primary,
      unselectedItemColor: Colors.blue,
      backgroundColor: Colors.grey.shade50,
      onTap: ontapped,
      ),
    );
  }
}