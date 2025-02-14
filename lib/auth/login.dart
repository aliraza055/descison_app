import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyform=GlobalKey<FormState>();
  var gmail='';
  var password='';
  var name='';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title:const Text("login page"),
        centerTitle: true,
      ),
      body: Container(
        padding:const EdgeInsets.all(16),
        color: Colors.black87,
        child: Form(
          key: _keyform,
          child: Column(
            children: [
            const  SizedBox(
                height: 150,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Gmail",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}