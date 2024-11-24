import 'package:flutter/material.dart';

import '../Flutter_Ders_1hisse/card_widget_learn.dart';

class CustomCard extends StatelessWidget {
  CustomCard({Key? key,required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
            margin: CardPaddingMargin.marginCard,
            child: child,

    );
  }
}