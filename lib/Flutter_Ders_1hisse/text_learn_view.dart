// class TextLearnView extends StatelessWidget {

//   const TextLearnView({ super.key });

//    @override
//    Widget build(BuildContext context) {
//        return Scaffold(
//            appBar: AppBar(title: const Text(''),),
//            body: Container(),
//        );
//   }
// }

import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  final String name = "Elvin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const Text(
            ('Every year w It is very beautiful. I like to make sandcastles and watch the sailboats go by. Sometimes there are dolphins and whales in the water! Every morning we look for shells in the sand. I found fifteen big shells last year. I put them in a special'),
            
             
            style: TextStyle(
              
              wordSpacing: 2,
              decoration: TextDecoration.underline,
              fontStyle: FontStyle.italic,
              color: Colors.amber,
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 44, width: 44,
          ),
          Container(
            width: 70,
            height: 40,
            color: Colors.red,

          ),


          
          Text(
            "world ! $name ${name.length}",
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.amber)
          ),
        ],
      )),
    );
  }
}
