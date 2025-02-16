import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
class ToastError{
  void toast( String message,Color bColor){
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: bColor,
        textColor: Colors.white,
        fontSize: 16.0
      );
  }
}