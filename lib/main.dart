import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_3/Flutter_Ders_2hisse/column_row_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_2hisse/custom_widgets_learn.dart';

import 'package:flutter_app_3/Flutter_Ders_2hisse/image_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_2hisse/indicator_widget_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_2hisse/list_title_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_2hisse/stack_widget_learn.dart';
import 'package:flutter_app_3/Flutter_Ders_hisse3/page_view_widget.dart';
import 'package:flutter_app_3/Flutter_Ders_hisse3/statefull_life_cycle.dart';
import 'package:flutter_app_3/Flutter_Ders_hisse3/statefull_widget_learn.dart';

import 'Pages/onboarding_pages.dart';

void main() {
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.transparent,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            centerTitle: true,
          ),
          progressIndicatorTheme: ProgressIndicatorThemeData(
            color: Colors.amber
          ),
          cardTheme: CardTheme(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)))),
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home:   OnboardingScreen(),
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
