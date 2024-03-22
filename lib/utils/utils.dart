import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils
{
  //code snippet fomr util class
  static toastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.white,
        textColor: Colors.green,
        fontSize: 16.0);
  }
}
