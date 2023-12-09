import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class TopUpBankItem extends StatelessWidget {
  final String imageUrl;
  final String bankName;
  final bool isSelected;

  const TopUpBankItem({
    Key? key,
    required this.imageUrl,
    required this.bankName,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 18,
      ),
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: BaseColors.neutral100,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: isSelected ? BaseColors.primary600 : BaseColors.neutral100,
          width: 2,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            width: 90,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                bankName,
                style: AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                  color: BaseColors.neutral900,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 2),
              Text(
                '50 Mins',
                style: AppTheme.appTextTheme.smallNoneReguler!.copyWith(
                  color: BaseColors.neutral300,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
