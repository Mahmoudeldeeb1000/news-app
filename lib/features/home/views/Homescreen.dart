import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       centerTitle: true,
       title: Row(
         children: [
           Text("news"),Text("cloud",style: TextStyle( color: Colors.orange)),
         ],
       ),
     ),
     body: Column(
       children: [
         Row()
       ],
     ),
   );

  }

}