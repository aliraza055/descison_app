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
        title:const Text("Sinup page"),
        centerTitle: true,
      ),
      body: Container(
        padding:const EdgeInsets.all(16),
        //color: Colors.black87,
        child: Form(
          key: _keyform,
          child: Column(
            children: [
            const  SizedBox(
                height: 150,
              ),
              TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Enter your name';
                  }else{
                    return null;
                  } 
                },
                onSaved: (value){
                  gmail=value!;
                },
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
                TextFormField(
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Enter your gmail';
                  }else{
                    return null;
                  } 
                },
                onSaved: (value){
                  name=value!;
                },
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
                validator: (value) {
                  if(value!.isEmpty){
                    return 'Enter your passward';
                  }else{
                    return null;
                  } 
                },
                onSaved: (value){
                  password=value!;
                },
                decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              ),
            const  SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  if(_keyform.currentState!.validate()){

                  }
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient:const LinearGradient(
                      colors: [Colors.limeAccent,Colors.green]),
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child:const Center(
                    child: Text(
                      'Sinup',style: TextStyle(fontSize: 26,color: Colors.white70,fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
              
              
              
            ],
          ),
        ),
      ),
    );
  }
}