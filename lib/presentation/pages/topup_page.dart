import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:ewallet/presentation/components/topup_bank_item.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 20),
          Text(
            'Wallet',
            style: AppTheme.appTextTheme.regulerNoneHeader1!.copyWith(
              color: BaseColors.neutral900,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                'assets/images/img_wallet.png',
                width: 80,
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: AppTheme.appTextTheme.regulerNoneMedium!.copyWith(
                      color: BaseColors.neutral900,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    'Bailiye',
                    style: AppTheme.appTextTheme.smallNormalReguler!.copyWith(
                      color: BaseColors.neutral900,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Select Bank ',
            style: AppTheme.appTextTheme.regulerNoneHeader1!.copyWith(
              color: BaseColors.neutral900,
              fontFamily: 'Poppins',
            ),
          ),
          const SizedBox(height: 14),
          const TopUpBankItem(
            imageUrl: 'assets/images/img_bank_bca.png',
            bankName: 'BANK BCA',
            isSelected: true,
          ),
          const TopUpBankItem(
            imageUrl: 'assets/images/img_bank_bni.png',
            bankName: 'BANK BNI',
          ),
          const TopUpBankItem(
            imageUrl: 'assets/images/img_bank_mandiri.png',
            bankName: 'BANK MANDIRI',
          ),
          const TopUpBankItem(
            imageUrl: 'assets/images/img_bank_ocbc.png',
            bankName: 'BANK OCBC',
          ),
          const SizedBox(
            height: 12,
          ),
          CostumFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup_amount');
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
