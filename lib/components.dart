import 'package:flutter/material.dart';

const _duration = Duration(milliseconds: 300);

CircleAvatar _normalAvatar(String imagePath) {
  return CircleAvatar(
    radius: 50,
    backgroundImage: AssetImage(imagePath),
  );
}

enum PageItems { first, second, third }

List<Widget> items(PageItems item) {
  switch (item) {
    case PageItems.first:
      return items1;
    case PageItems.second:
      return items2;
    case PageItems.third:
      return items3;
  }
}

List<Widget> get items1 {
  return [
    AnimatedAlign(
      key: const ValueKey(PageItems.third),
      alignment: Alignment.centerLeft,
      duration: _duration,
      child: _normalAvatar("assets/images/dolar.png"),
    ),
    AnimatedAlign(
      key: const ValueKey(PageItems.second),
      alignment: Alignment.centerRight,
      duration: _duration,
      child: _normalAvatar("assets/images/euro.png"),
    ),
    AnimatedAlign(
      key: const ValueKey(PageItems.first),
      alignment: Alignment.center,
      duration: _duration,
      child: _normalAvatar("assets/images/tl.png"),
    ),
  ];
}

List<Widget> get items2 {
  return [
    AnimatedAlign(
      key: const ValueKey(PageItems.third),
      alignment: Alignment.centerLeft,
      duration: _duration,
      child: _normalAvatar("assets/images/dolar.png"),
    ),
    AnimatedAlign(
      key: const ValueKey(PageItems.first),
      alignment: Alignment.centerRight,
      duration: _duration,
      child: _normalAvatar("assets/images/tl.png"),
    ),
    AnimatedAlign(
      key: const ValueKey(PageItems.second),
      alignment: Alignment.center,
      duration: _duration,
      child: _normalAvatar("assets/images/euro.png"),
    ),
  ];
}

List<Widget> get items3 {
  return [
    AnimatedAlign(
      key: const ValueKey(PageItems.first),
      alignment: Alignment.centerLeft,
      duration: _duration,
      child: _normalAvatar("assets/images/tl.png"),
    ),
    AnimatedAlign(
      key: const ValueKey(PageItems.second),
      alignment: Alignment.centerRight,
      duration: _duration,
      child: _normalAvatar("assets/images/euro.png"),
    ),
    AnimatedAlign(
      key: const ValueKey(PageItems.third),
      alignment: Alignment.center,
      duration: _duration,
      child: _normalAvatar("assets/images/dolar.png"),
    ),
  ];
}
