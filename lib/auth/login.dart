import 'package:descison_app/auth/sinup.dart';
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
      // appBar: AppBar(
      //   backgroundColor: Colors.red,
      //   title:const Text("Sing page"),
      //   centerTitle: true,
      // ),
      backgroundColor: Colors.grey,
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
            const  Text('Sign In.',
              style: TextStyle(
                fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center,
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
                  hintStyle:const TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
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
                  hintStyle:const TextStyle(color: Colors.white),
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
                      'Sign in',style: TextStyle(fontSize: 26,color: Colors.white70,fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),  
                const SizedBox(
                height: 20,
              ) ,
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                 const   Text("If you have not account!",style: TextStyle(color:Colors.white),),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>const Singup()));
                    }, child:const Text('signup'))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}