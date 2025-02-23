import 'package:descison_app/Utlis/colors.dart';
import 'package:descison_app/auth/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  Future<User?> getUser() async {
    return FirebaseAuth.instance.currentUser;
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: AppColors().primary),
      home: FutureBuilder<User?>(
        future: getUser(),
        builder: (context, snapshot) {
          if (!mounted) return const SizedBox();  
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(body: Center(child: CircularProgressIndicator()));
          } else if (snapshot.hasData) {
            return const WelcomePage();
          } else { 
                      
            return const WelcomePage();
          }
        },
      ),
    );
  }
}
