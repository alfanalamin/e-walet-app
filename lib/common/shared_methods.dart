import 'package:another_flushbar/flushbar.dart';
import 'package:ewallet/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void showCostumSnackbar(BuildContext context, String message) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: BaseColors.danger500,
    duration: const Duration(seconds: 3),
  ).show(context);
}

String formatCurrency(
  num number, {
  String symbol = 'Rp ',
}) {
  return NumberFormat.currency(
    locale: 'id',
    symbol: symbol,
    decimalDigits: 0,
  ).format(number);
}
