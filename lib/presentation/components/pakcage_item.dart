import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/common/shared_methods.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  final int totalData;
  final int price;
  final bool isSelected;

  const PackageItem({
    Key? key,
    required this.totalData,
    required this.price,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 175,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: BaseColors.neutral100,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? BaseColors.primary500 : Colors.transparent,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$totalData GB',
            style: AppTheme.appTextTheme.title2!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            formatCurrency(price),
            style: AppTheme.appTextTheme.regulerNoneReguler!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
        ],
      ),
    );
  }
}
