import 'package:flutter/material.dart';

class ScaffoldLearn extends StatelessWidget {

  const ScaffoldLearn({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
        extendBody: true,
        backgroundColor: Colors.blue,
           appBar: AppBar(title: const Text('My App'),),
           body: Container(
            width: 200,
            height: 200 ,
            child: Text("Content"),
            color: Colors.amber,
           ),
           drawer: const Drawer(),
           floatingActionButton: FloatingActionButton(onPressed: (){},),
           floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


           bottomNavigationBar:BottomNavigationBarClass.bottomNavigationBar

       );
  }
}







class BottomNavigationBarClass {
  static BottomNavigationBar bottomNavigationBar =  BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home" )
            ,BottomNavigationBarItem(icon: Icon(Icons.people),label: "People" )
           ]);

}