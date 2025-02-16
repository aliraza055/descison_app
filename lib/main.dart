import 'package:descison_app/Utlis/colors.dart';
import 'package:descison_app/auth/welcome.dart';
import 'package:descison_app/pages/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());

}

class MyApp extends StatefulWidget  {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: AppColors().primary
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
         builder:(context,snapshot) {
          if(snapshot.hasData){
            return const WelcomePage();
          }else{
            return const WelcomePage();
          }
         }),
    );
  }
}
