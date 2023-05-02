import 'package:flutter/material.dart';

/*class HomeController extends InheritedWidget {
  HomeController({Key? key, required Widget child})
      : super(key: key, child: child);

  int contador = 1;

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    return false;
  }
}*/

class HomeController extends InheritedNotifier<ValueNotifier<int>> {
  HomeController({Key? key, required Widget child})
      : super(key: key, child: child, notifier: ValueNotifier(0));

  static HomeController of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HomeController>()!;
  }

  int get contador => notifier!.value;

  increment() {
    notifier!.value++;
  }
}
