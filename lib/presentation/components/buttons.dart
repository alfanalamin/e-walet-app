import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class CostumFilledButton extends StatelessWidget {
  final String title;
  final double width;
  final double height;
  final VoidCallback? onPressed;

  const CostumFilledButton({
    Key? key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
       onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: BaseColors.primary700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(56),
          ),
        ),
        child: Text(
          title,
          style: AppTheme.appTextTheme.regulerNoneMedium!
              .copyWith(color: BaseColors.neutral50, fontFamily: 'Poppins'),
        ),
      ),
    );
  }
}

class CostumFilledText extends StatelessWidget {
  final String titleone;
  final String titletwo;
  final VoidCallback? onPressed;

  const CostumFilledText({
    Key? key,
    required this.titleone,
    required this.titletwo,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          titleone,
          style: AppTheme.appTextTheme.smallNoneMedium!
              .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            titletwo,
            style: AppTheme.appTextTheme.smallNoneMedium!
                .copyWith(color: BaseColors.primary500, fontFamily: 'Poppins'),
          ),
        ),
      ],
    );
  }
}

class CostumInputButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const CostumInputButton({
    Key? key,
    required this.title,
    this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: BaseColors.neutral700,
        ),
        child: Center(
          child: Text(
            title,
            style: AppTheme.appTextTheme.largeNoneMedium!.copyWith(
              color: BaseColors.neutral50,
              fontFamily: 'Poppins',
            ),
          ),
        ),
      ),
    );
  }
}
