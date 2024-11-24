import 'package:flutter/material.dart';
import 'package:flutter_app_3/Flutter_Ders_1hisse/color_items.dart';
import 'package:flutter_app_3/Flutter_Ders_1hisse/text_item.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  final String _text = "Data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorItem.primaryC0lor,
      appBar: AppBar(
        title: const Text('Color Learn'),
      ),
      body: Column(
        children: [
          Container(
              color: ColorItem.textCeruleanColor2,
              child: Text(
                TextItem.text,
              )),
          Container(
              color: ColorItem.textCeruleanColor2,
              child: Text(
                 _text,
              )),
          Container(
              color: ColorItem.textCeruleanColor2,
              child: Text(
                 _text,
              )),
          Container(
              color: ColorItem.textCeruleanColor2,
              child: Text(
                 _text,
              )),
          Container(
              color: ColorItem.textCeruleanColor2,
              child: Text(
                 _text,
              )),
        ],
      ),
    );
  }
}
