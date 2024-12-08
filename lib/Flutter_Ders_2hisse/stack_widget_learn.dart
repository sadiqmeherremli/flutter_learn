import 'package:flutter/material.dart';

class StackWidgetLearn extends StatelessWidget {

  const StackWidgetLearn({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Stack(
            alignment: Alignment.center,
            children: [
            Container(color: Colors.amber,height: 100,),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(color: Colors.red,height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Container(color: Colors.green,height: 100,),
            ),
            // Positioned.fill(child: Container(color: Colors.black,),
            // top: 20,
            // ),
            


            Positioned(child: Container(color: Colors.purple)

            ,
            right: 12,
            left: 12,
            height: 100,
            // top: 24,
            bottom: 52 ,
            ),



           ],),
           
       );
  }
}