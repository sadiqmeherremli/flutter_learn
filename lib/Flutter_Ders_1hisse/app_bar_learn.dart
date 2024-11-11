
import 'package:flutter/material.dart';

class AppBarLearn extends StatelessWidget {

  const AppBarLearn({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        
           appBar: AppBar(title: const Text('Shopping Bag'),
           leading: const Icon(Icons.chevron_left),
           actions: [IconButton(onPressed: (){

           }, icon: const Icon(Icons.heart_broken_rounded))],),
           body: Container(),
       );
  }
}