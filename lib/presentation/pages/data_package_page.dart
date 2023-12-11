import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:ewallet/presentation/components/forms.dart';
import 'package:ewallet/presentation/components/pakcage_item.dart';
import 'package:flutter/material.dart';

class SelectDataPackagePage extends StatelessWidget {
  const SelectDataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Pilih Paket Data',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 16,
          ),
          const CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 14,
          ),
          const Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              PackageItem(
                totalData: 10,
                price: 1000,
                isSelected: true,
              ),
              PackageItem(
                totalData: 25,
                price: 1000,
              ),
              PackageItem(
                totalData: 30,
                price: 1000,
              ),
              PackageItem(
                totalData: 98,
                price: 1000,
              ),
            ],
          ),
          const SizedBox(
            height: 85,
          ),
          CostumFilledButton(
            title: 'Beli Paket Data',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/data_package_success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
