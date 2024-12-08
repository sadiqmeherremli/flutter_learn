import 'package:flutter/material.dart';

class StatefullLifeCycle extends StatefulWidget {
  const StatefullLifeCycle({super.key, required this.message});

  final String message;

  @override
  State<StatefullLifeCycle> createState() => _StatefullLifeCycleState();
}

class _StatefullLifeCycleState extends State<StatefullLifeCycle> {
  String _message = "";

  int index = 1;

  @override
  void initState() {
    super.initState();

    _message = widget.message;

    if (widget.message.length.isOdd) {
      _message = _message + "Tek";
    } else {
      _message += "cut";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          title: widget.message.length.isOdd ? Text("Tekdi") : Text("Cutdur"),
        ),
        body: widget.message.length.isOdd 
            ? TextButton(
                onPressed: () {},
                child: Text(_message),
              )
            : ElevatedButton(onPressed: () {}, child: Text(_message)) ); 
  }
}
