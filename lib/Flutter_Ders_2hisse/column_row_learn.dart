import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      //  body: Expanded(
      //   flex: 4,// 4,2,2,2
      //    child: const Column(
      //     // crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //        Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //         // crossAxisAlignment: CrossAxisAlignment.center,
      //         children: [
      //           FlutterLogo(),
      //           FlutterLogo(),
      //           FlutterLogo(),
      //           FlutterLogo(),
      //           FlutterLogo(),
      //         ],
      //       ),

      //       const FlutterLogo(),
      //       FlutterLogo(),
      //       FlutterLogo(),
      //       FlutterLogo(),
      //       FlutterLogo(),

      //       Row(
      //         children: [
      //           FlutterLogo(),
      //           FlutterLogo(),
      //           FlutterLogo(),
      //           FlutterLogo(),
      //           FlutterLogo(),
      //         ],
      //       ),

      //     ],
      //    ),
      //  ),

      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ignore: prefer_const_constructors
          //     Expanded(
          //       flex: 4,
          //       child: Row(
          //         mainAxisSize: MainAxisSize.max,
          //         children: [
          //         //  Expanded(flex: 6,child: Container(color: Colors.amber,)),
          //         //  Expanded(flex: 2,child: Container(color: Colors.red,)),
          //         //  Expanded(flex: 1,child: Container(color: Colors.blue,)),

          //         ],
          //   ),

          // ),
          //  Expanded(flex: 2,child: Container(color: Colors.black,)),
          //  Expanded(flex: 2,child: Container(color: Colors.purple,)),
          //  Expanded(flex: 2,child: Container(color: Colors.orange,)),
          // Spacer(
          //   flex: 6,
          // ),

          Container(height: 50, width: 50, color: Colors.red),
          Container(height: 50, width: 50, color: Colors.purple),
        ],
      ),
    );
  }
}
