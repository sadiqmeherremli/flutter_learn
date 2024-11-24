import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Padding(
        padding: PprojectPaddings.pagePaddingAll,
        child: Column(
          children: [
            Padding(
              padding: PprojectPaddings.pagePaddingBottom,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: PprojectPaddings.pagePaddingBottom,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: PprojectPaddings.pagePaddingBottom,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: PprojectPaddings.pagePaddingVertical 
              +
                  PprojectPaddings.pagePaddingHorizontal,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PprojectPaddings {
  static const pagePaddingBottom = EdgeInsets.only(bottom: 10);
  static const pagePaddingAll = EdgeInsets.all(20.0);

  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 20);
  static const pagePaddingHorizontal = EdgeInsets.symmetric(horizontal: 16);


}
