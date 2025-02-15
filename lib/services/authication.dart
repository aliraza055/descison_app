import 'package:descison_app/Utlis/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Authicatin{
   void SingUp(String email,String password)async{
   await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email, password: password
      ).then((data){
        ToastError().toast("you have successfully created account");
      }).onError((error,stackTrace){
     if(error=='weak-password'){
      ToastError().toast("The password provide is too weak!");
     }else if(error== 'email-already-in-use'){
     ToastError().toast("The account already exist!");
     }else{
           ToastError().toast("$error");
     }
      });
  }
}