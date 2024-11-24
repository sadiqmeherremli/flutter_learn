import 'package:flutter/material.dart';

import '../Widgets/custom_widget.dart';

class CardWidgetLearn extends StatelessWidget {
  const CardWidgetLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Column(
        children: [
          Card(
            margin: CardPaddingMargin.marginCard,
            color: Colors.white,
            child: const SizedBox(
              height: 100,
              width: 200,
            ),
          ),
          CustomCard(child: Center(child: Text("Data"))),
          CustomCard(child: SizedBox(height: 100,width: 100,)),
        ],
      ),
    );
  }
}

//RoundedRectangleBorder(), StatiumBorder(),CircleBorder()

class CardPaddingMargin {
  static const marginCard = EdgeInsets.all(20);
}


