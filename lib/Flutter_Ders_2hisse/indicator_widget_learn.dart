import 'package:flutter/material.dart';

class IndicatorWidgetLearn extends StatelessWidget {

  const IndicatorWidgetLearn({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('App'),
           actions: [],),
           body:  Container()
            // child: CircularProgressIndicator(
            //  strokeWidth: 8,
            //  value: 0.5,
            //  backgroundColor: Colors.black,

            // ),
             
           
       );
  }
}