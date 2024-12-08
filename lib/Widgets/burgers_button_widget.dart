import 'package:flutter/material.dart';
import 'package:flutter_app_3/Product/language/language_string_item.dart';

class BurgersButtonWidget extends StatefulWidget {
  const BurgersButtonWidget({super.key});

  @override
  State<BurgersButtonWidget> createState() => _BurgersButtonWidgetState();
}

class _BurgersButtonWidgetState extends State<BurgersButtonWidget> {
  int _counterValue = 0;

  void _counterValueMethod() {
    setState(() {
      _counterValue++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _counterValueMethod,
      child: Text("${LanguageStringItems.burger} $_counterValue"),
    );
  }
}
