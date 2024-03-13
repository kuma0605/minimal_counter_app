import 'package:flutter/foundation.dart';

// 1
class HomePageManager {
  // 2
  final counterNotifier = ValueNotifier<int>(0);

  void increment() {
    // 3
    counterNotifier.value++;
  }
}