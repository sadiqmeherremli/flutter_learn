import 'package:flutter/material.dart';

class ContainerCustomWidget extends StatelessWidget {
   ContainerCustomWidget({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.deepOrange,
      child: Text(text),
    );
  }
}
