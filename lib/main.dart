 import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:currency_converter/currency_converter_material_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
 runApp(const myApp());


}
//Types of Widgets
// 1. StatelessWidget
// 2. StatefulWidget

// 1.Material Design
// 2.Cupertino Design

// ignore: camel_case_types
class myApp extends StatelessWidget {
const myApp({super.key});
@override
Widget build(BuildContext context){
  return const MaterialApp(

    home: MaterialHomePage(),
  );
}
}
class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoHomePage(),
    );
  }
}