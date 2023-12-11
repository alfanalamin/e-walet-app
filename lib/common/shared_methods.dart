import 'package:another_flushbar/flushbar.dart';
import 'package:ewallet/common/app_colors.dart';
import 'package:flutter/material.dart';

void showCostumSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: BaseColors.danger500,
    duration: const Duration(seconds: 3),
  ).show(context);
}
