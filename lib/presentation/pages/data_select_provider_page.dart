import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:ewallet/presentation/components/select_data_provider_item.dart';
import 'package:flutter/material.dart';

class SelectDataProviderPage extends StatelessWidget {
  const SelectDataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beli Pulsa/Data',
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
            'From Wallet',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/img_wallet.png',
                width: 80,
                height: 55,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8088 1818 1818 1818',
                    style: AppTheme.appTextTheme.regulerNoneHeader1!.copyWith(
                        color: BaseColors.neutral950, fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Balance Rp 1.000.000',
                    style: AppTheme.appTextTheme.smallNoneReguler!.copyWith(
                        color: BaseColors.neutral900, fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Data',
            style: AppTheme.appTextTheme.regulerNoneHeader1!
                .copyWith(color: BaseColors.neutral900, fontFamily: 'Poppins'),
          ),
          const SizedBox(
            height: 16,
          ),
          const SelectDataProviderItem(
            imageUrl: 'assets/images/img_provider_telkomsel.png',
            name: 'Telkomsel',
            isSelected: true,
          ),
          const SelectDataProviderItem(
            imageUrl: 'assets/images/img_provider_indosat.png',
            name: 'Indosat Ooredoo',
          ),
          const SelectDataProviderItem(
            imageUrl: 'assets/images/img_provider_singtel.png',
            name: 'Sengtel ID',
          ),
          const SizedBox(
            height: 135,
          ),
          CostumFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/selectdatapackagpage');
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
