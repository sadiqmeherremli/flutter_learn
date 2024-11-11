import 'package:flutter/material.dart';
import 'package:flutter_app_3/Flutter_Ders_1hisse/app_bar_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_1hisse/button_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_1hisse/container_learn_view.dart';

import 'Flutter_Ders_1hisse/scaffold_learn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
      
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AppBarLearn(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

 

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {

//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       appBar: AppBar(
   
//         backgroundColor: Colors.amber,

//         title: Text("First App"),
//       ),
//       body: Center(
  
//         child: 
//         Column(
         
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             const SizedBox(width:7 ,height: 20,),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         backgroundColor: Colors.red,
//         focusColor: Colors.blue,
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         label: Row(children: [const Icon(Icons.add), Text("reqem artsin")],),  
        
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
