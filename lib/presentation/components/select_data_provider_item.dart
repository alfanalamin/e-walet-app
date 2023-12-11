import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class SelectDataProviderItem extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool isSelected;

  const SelectDataProviderItem({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      margin: const EdgeInsets.only(bottom: 18),
      decoration: BoxDecoration(
        color: BaseColors.neutral100,
        borderRadius: BorderRadius.circular(20),
        border: isSelected
            ? Border.all(
                color: BaseColors.primary500,
                width: 2,
              )
            : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            imageUrl,
            height: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                name,
                style: AppTheme.appTextTheme.regulerNoneHeader1!.copyWith(
                    color: BaseColors.neutral900, fontFamily: 'Poppins'),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                'Avaible',
                style: AppTheme.appTextTheme.smallNoneReguler!.copyWith(
                    color: BaseColors.neutral900, fontFamily: 'Poppins'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
