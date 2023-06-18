import 'package:flutter/material.dart';
import 'mybag.dart';
void main(){
  runApp(mybag());
}
class mybag extends StatelessWidget{
  const mybag({super.key});
  @override
  Widget build (BuildContext){
    return MaterialApp(
      title: "Demo App",
      theme: ThemeData(primaryColor: Colors.white,),
      home: Mybag_App()
    );

  }
