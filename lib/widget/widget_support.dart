import 'package:flutter/material.dart';

class Appwidget {
  static TextStyle boldTextStyle(){
    return const TextStyle(
                fontSize: 22.00,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"
    );
  }
  static TextStyle semiBoldTextStyle(){
    return const TextStyle(
                fontSize: 18.00,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins"
    );
  }
    static TextStyle headlineTextStyle(){
    return const TextStyle(
                fontSize: 24.00,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Poppins"
    );
  }
      static TextStyle lightTextStyle(){
    return const TextStyle(
                fontSize: 18.00,
                  color: Colors.black38,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Poppins"
    );
  }
}