import 'package:flutter/material.dart';



class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _nextPage() {
    if (_currentPage < 2) {
      _pageController.nextPage(
        duration: Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                
                buildPage(
                  context,
                  image: 'assets/images/page1.png', 
                  title: 'Choose Products',
                  description:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                ),
                
                buildPage(
                  context,
                  image: 'assets/images/page2.png', 
                  title: 'Make Payment',
                  description:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                ),
                
                buildPage(
                  context,
                  image: 'assets/images/page3.png',
                  title: 'Get Your Order',
                  description:
                      'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.',
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                if (_currentPage > 0)
                  TextButton(
                    onPressed: _prevPage,
                    child: Text("Prev",style: TextStyle(color: const Color.fromARGB(255, 90, 88, 88)),),
                  )
                else
                  SizedBox(),
                
                Row(
                  children: List.generate(
                    3,
                    (index) => Container(
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: _currentPage == index
                            ? Colors.black
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ),
                
                TextButton(
                  onPressed: _currentPage == 2
                      ? () {
                         
                        }
                      : _nextPage,
                  child: Text(_currentPage == 2 ? "Get Started" : "Next", style: TextStyle(color: Colors.red),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildPage(
    BuildContext context, {
    required String image,
    required String title,
    required String description,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Görsel
          Image.asset(
            image,
            height: 250,
          ),
          SizedBox(height: 20),
          // Başlık
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          // Açıklama
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
