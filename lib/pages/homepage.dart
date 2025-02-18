import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Decison app'),
       backgroundColor: Colors.blueAccent,
       centerTitle: true,
       actions: [
        IconButton(onPressed: ()async{
          await FirebaseAuth.instance.signOut();
        }, icon:const Icon(Icons.home))
       ],
      ),
      body:const Center(
        child: Text("HOme page"),
      ),
    );
  }
}