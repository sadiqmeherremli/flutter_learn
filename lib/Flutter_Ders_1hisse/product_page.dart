import 'package:flutter/material.dart';
import 'package:flutter_app_3/Widgets/container_custom_widget.dart';

class ProductPage extends StatelessWidget {

  const ProductPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text(''),),
           body: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ContainerCustomWidget(text: "Product 1"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ContainerCustomWidget(text: "Product 2"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ContainerCustomWidget(text: "Product 3"),
            ),
           ]),

       );
  }
}