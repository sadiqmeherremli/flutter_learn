import 'package:flutter/material.dart';
import 'package:flutter_app_3/Flutter_Ders_2hisse/image_learn.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  final _pageController = PageController();
  int test = 1;

  int _currentIndex = 0;
  

  void _updatePageIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 64),
            child: Text(
              _currentIndex.toString(),
              style: TextStyle(fontSize: 24),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: Duration(seconds: 1), curve: Curves.slowMiddle);
              },
              child: Icon(Icons.chevron_left),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(
                  duration: Duration(seconds: 1), curve: Curves.bounceIn);
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text(''),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        padEnds: false,
        children: [
          Container(
            color: test==2 ?  Colors.red : Colors.green ,
            child: test==2 ? Text(
              "page1",
              style: TextStyle(fontSize: 64),
            ) : Text("page3")
          ),
          Container(
            color: Colors.blue,
            child: Text(
              "page2",
              style: TextStyle(fontSize: 64),
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Text(
              "page3",
              style: TextStyle(fontSize: 64),
            ),
          ),
          ImageLearn(),
        ],
      ),
    );
  }
}
