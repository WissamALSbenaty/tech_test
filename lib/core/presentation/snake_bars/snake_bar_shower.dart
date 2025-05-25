
import 'package:fintech/core/utils/enums.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:toastification/toastification.dart';


@singleton
class SnakeBarShower{
  void showSnakeBar(final String message,final ToastType type) {

    toastification.dismissAll();
    toastification.show(
      type: type.toastificationType,
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
    );

  }
}



