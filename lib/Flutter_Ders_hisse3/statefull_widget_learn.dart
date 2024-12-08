import 'package:flutter/material.dart';
import 'package:flutter_app_3/Product/language/language_string_item.dart';
import 'package:flutter_app_3/Widgets/burgers_button_widget.dart';

class StatefullWidgetLearn extends StatefulWidget {
  const StatefullWidgetLearn({super.key});

  @override
  State<StatefullWidgetLearn> createState() => _StatefullWidgetLearnState();
}

class _StatefullWidgetLearnState extends State<StatefullWidgetLearn> {
  int _counter = 0;


//   void incrementButton(){
//     setState(() {
//     counter++;

//     });
//   }
//   void deincrementButton(){
// setState(() {
//     counter--;

// });  }

  void _updateCounter(bool isIncrement) {
    setState(() {
      if (isIncrement) {
        _counter++;
      } else {
        _counter--;
      }
    });
  }



  @override
  Widget build(BuildContext context) {
    FloatingActionButton incrementWidget = FloatingActionButton(
      onPressed: () {
        _updateCounter(true);
      },
      child: Icon(Icons.add),
    );

    FloatingActionButton deincrementWidget = FloatingActionButton(
      onPressed: () {
        _updateCounter(false);
      },
      child: Icon(Icons.remove),
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:  Text(LanguageStringItems.testApp,style: TextStyle(color: Colors.white),),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          incrementWidget,
          deincrementWidget,
        ],
      ),
      body: Center(
        child: Column(
          children: [
            BurgersButtonWidget(),
           
            Text(
              _counter.toString(),
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
