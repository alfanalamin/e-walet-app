import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/forms.dart';
import 'package:flutter/material.dart';

class TranfersPage extends StatelessWidget {
  const TranfersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tranfers',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Text(
            'Tranfers ',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
        ],
      ),
    );
  }
}
