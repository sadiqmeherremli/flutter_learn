import 'package:flutter/material.dart';

class CustomWidgetsLearn extends StatelessWidget {
  const CustomWidgetsLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App'),
      ),
      body: Center(
        child:  Column(
          children: [
            CustomElevatedButton(
              title: "Next",
              onPressed: () {
                
              },
            ),
            CustomElevatedButton(
              title: "Button2",
            ),
            CustomElevatedButton(
              title: "Button2",
            ),
          ],
        ),
      ),
    );
  }
}

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title, required this.onPressed,
  });
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: _ColorUtility().orangeColor,
              shape: const StadiumBorder()),
          onPressed: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 106),
            child: Text(
              title,
              style: TextStyle(color: _ColorUtility().whiteColor, fontSize: 24),
            ),
          )),
    );
  }
}

class _ColorUtility {
  final Color orangeColor = const Color(
    0xFFFF7622,
  );
  final Color whiteColor = Colors.white;
}
