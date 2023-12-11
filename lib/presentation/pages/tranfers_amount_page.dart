import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TranfersAmountPage extends StatefulWidget {
  const TranfersAmountPage({super.key});

  @override
  State<TranfersAmountPage> createState() => _TranfersAmountPageState();
}

class _TranfersAmountPageState extends State<TranfersAmountPage> {
  final TextEditingController _amountController =
      TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
    _amountController.addListener(() {
      final text = _amountController.text;
      _amountController.value = _amountController.value.copyWith(
        text: NumberFormat.currency(
          locale: 'id',
          symbol: '',
          decimalDigits: 0,
        ).format(
          int.parse(
            text.replaceAll('.', ''),
          ),
        ),
      );
    });
  }

  addAmont(String number) {
    if (_amountController.text == '0') {
      _amountController.text = '';
    }
    setState(() {
      _amountController.text = _amountController.text + number;
    });
  }

  deleteAmount() {
    if (_amountController.text.isNotEmpty) {
      setState(
        () {
          _amountController.text = _amountController.text
              .substring(0, _amountController.text.length - 1);
          if (_amountController.text.isEmpty) {
            _amountController.text = '0';
          }
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.neutral950,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 58),
        children: [
          const SizedBox(
            height: 60,
          ),
          Center(
            child: Text(
              'Total Amount',
              style: AppTheme.appTextTheme.largeNoneHeading1!.copyWith(
                color: BaseColors.neutral50,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          const SizedBox(
            height: 67,
          ),
          Align(
            child: SizedBox(
              width: 200,
              child: TextFormField(
                controller: _amountController,
                enabled: false,
                cursorColor: BaseColors.neutral300,
                style: AppTheme.appTextTheme.title3!.copyWith(
                  color: greyColor,
                  fontFamily: 'Poppins',
                ),
                decoration: InputDecoration(
                  prefix: Text(
                    'Rp',
                    style: AppTheme.appTextTheme.title3!.copyWith(
                      color: greyColor,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: BaseColors.neutral300,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: BaseColors.neutral300,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            children: [
              CostumInputButton(
                title: '1',
                onTap: () {
                  addAmont('1');
                },
              ),
              CostumInputButton(
                title: '2',
                onTap: () {
                  addAmont('2');
                },
              ),
              CostumInputButton(
                title: '3',
                onTap: () {
                  addAmont('3');
                },
              ),
              CostumInputButton(
                title: '4',
                onTap: () {
                  addAmont('4');
                },
              ),
              CostumInputButton(
                title: '5',
                onTap: () {
                  addAmont('5');
                },
              ),
              CostumInputButton(
                title: '6',
                onTap: () {
                  addAmont('6');
                },
              ),
              CostumInputButton(
                title: '7',
                onTap: () {
                  addAmont('7');
                },
              ),
              CostumInputButton(
                title: '8',
                onTap: () {
                  addAmont('8');
                },
              ),
              CostumInputButton(
                title: '9',
                onTap: () {
                  addAmont('9');
                },
              ),
              const SizedBox(
                width: 60,
                height: 60,
              ),
              CostumInputButton(
                title: '0',
                onTap: () {
                  addAmont('0');
                },
              ),
              GestureDetector(
                onTap: () {
                  deleteAmount();
                },
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: BaseColors.neutral700,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back,
                      color: BaseColors.neutral50,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          CostumFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/tranfers_success', (route) => false);
              }
            },
          ),
          const SizedBox(
            height: 25,
          ),
          CostumFilledText(
            titleone: 'Terms',
            titletwo: ' & Conditions',
            onPressed: () {},
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
