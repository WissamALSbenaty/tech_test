
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

enum ToastType {
  success(ToastificationType.success,Colors.green),
  warning(ToastificationType.warning,Colors.yellow),
  info(ToastificationType.info,Colors.blue),
  error(ToastificationType.error,Colors.red),;

  final  ToastificationType toastificationType;
  final Color color;
  const ToastType(this.toastificationType,this.color);
}

enum RequestMethod { get, delete, post, patch, put, options }

enum FieldPriority { required, optional, optionalHidden }


