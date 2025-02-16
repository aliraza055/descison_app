import 'dart:math';

import 'package:descison_app/Utlis/toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authentication {
  Future<void> signUp(BuildContext context, String email, String password, String? username) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = FirebaseAuth.instance.currentUser;
      if (user != null && username != null) {
        await user.updateDisplayName(username);
      }

      ToastError().toast("You have successfully created an account");
     // Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ToastError().toast("The password provided is too weak!");
      } else if (e.code == 'email-already-in-use') {
        ToastError().toast("The account already exists!");
      } else {
        ToastError().toast("Error: ${e.message}");
        print('${e.message}');
      }
    } catch (e) {
      ToastError().toast("An unexpected error occurred: $e");
    }
  }
}
