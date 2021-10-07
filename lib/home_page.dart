import 'package:animate_circles_example/components.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageItems _currentIndex = PageItems.first;
  bool _isAnimate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            child: const Text('TL'),
            onPressed: () {
              setState(() {
                _currentIndex = PageItems.first;
              });
            },
          ),
          FloatingActionButton(
            child: const Text('Euro'),
            onPressed: () {
              setState(() {
                _currentIndex = PageItems.second;
              });
            },
          ),
          FloatingActionButton(
            child: const Text('Dollar'),
            onPressed: () {
              setState(() {
                _currentIndex = PageItems.third;
              });
            },
          ),
        ],
      ),
      appBar: AppBar(
        title: const Text("Example"),
        centerTitle: true,
      ),
      body: GestureDetector(
        onHorizontalDragUpdate: (DragUpdateDetails details) {
          if (details.delta.dx > 0) {
            //Soldan sağa kaydırma
            if (!_isAnimate) {
              _isAnimate = true;
              if (_currentIndex == PageItems.first) {
                _currentIndex = PageItems.third;
              } else {
                _currentIndex = PageItems.values[_currentIndex.index - 1];
              }
            }

            setState(() {
              _isAnimate = false;
            });
          } else {
            //Sağdan sola kaydırma

            if (!_isAnimate) {
              _isAnimate = true;
              if (_currentIndex == PageItems.third) {
                _currentIndex = PageItems.first;
              } else {
                _currentIndex = PageItems.values[_currentIndex.index + 1];
              }
            }

            setState(() {
              _isAnimate = false;
            });
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Stack(
            children: items(_currentIndex),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
