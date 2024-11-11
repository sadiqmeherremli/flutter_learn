import 'package:flutter/material.dart';

class ContainerLearnView extends StatelessWidget {

  const ContainerLearnView({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Container Widget'),),
           body: Center(
             child: Container(
              width: 200,
              height: 200,
              child:  const Center(child: Text("Box")),
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration:  BoxDecorationsWidget.boxDecoration
             ),
           ),
       );
  }
}




class BoxDecorationsWidget{

  static BoxDecoration boxDecoration = BoxDecoration(
                border: Border.all(width: 10,color: const Color.fromARGB(255, 197, 244, 54)),

                borderRadius: const BorderRadius.all(Radius.circular(20)),

                gradient: const LinearGradient(colors: [Colors.black,Colors.amber]),
                boxShadow: const [BoxShadow(color: Colors.red,offset:Offset(0.1, 1))]
                

              
              );
}

