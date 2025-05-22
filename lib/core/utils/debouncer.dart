import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  final Duration duration;
  Timer? _timer;

  Debouncer({required this.duration});

  run(final VoidCallback action) {
    cancel();
    _timer = Timer(duration, action);
  }

  void cancel(){
    _timer?.cancel();
  }
}
