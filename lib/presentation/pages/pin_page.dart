import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:ewallet/presentation/components/buttons.dart';
import 'package:flutter/material.dart';

class PinPage extends StatefulWidget {
  const PinPage({super.key});

  @override
  State<PinPage> createState() => _PinPageState();
}

class _PinPageState extends State<PinPage> {
  final TextEditingController _pinController = TextEditingController(text: '');
  addPin(String number) {
    if (_pinController.text.length < 6) {
      setState(() {
        _pinController.text = _pinController.text + number;
      });
    }
    // print(_pinController.text);
  }

  deletePin() {
    if (_pinController.text.isNotEmpty) {
      setState(() {
        _pinController.text =
            _pinController.text.substring(0, _pinController.text.length - 1);
      });
    }
    // print(_pinController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BaseColors.neutral950,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sha Pin',
                style: AppTheme.appTextTheme.largeNoneHeading1!.copyWith(
                  color: BaseColors.neutral50,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 190,
                child: TextFormField(
                  controller: _pinController,
                  obscureText: true,
                  enabled: false,
                  cursorColor: BaseColors.neutral300,
                  obscuringCharacter: '*',
                  style: AppTheme.appTextTheme.title3!.copyWith(
                    color: greyColor,
                    fontFamily: 'Poppins',
                    letterSpacing: 20,
                  ),
                  decoration: InputDecoration(
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
                      addPin('1');
                    },
                  ),
                  CostumInputButton(
                    title: '2',
                    onTap: () {
                      addPin('2');
                    },
                  ),
                  CostumInputButton(
                    title: '3',
                    onTap: () {
                      addPin('3');
                    },
                  ),
                  CostumInputButton(
                    title: '4',
                    onTap: () {
                      addPin('4');
                    },
                  ),
                  CostumInputButton(
                    title: '5',
                    onTap: () {
                      addPin('5');
                    },
                  ),
                  CostumInputButton(
                    title: '6',
                    onTap: () {
                      addPin('6');
                    },
                  ),
                  CostumInputButton(
                    title: '7',
                    onTap: () {
                      addPin('7');
                    },
                  ),
                  CostumInputButton(
                    title: '8',
                    onTap: () {
                      addPin('8');
                    },
                  ),
                  CostumInputButton(
                    title: '9',
                    onTap: () {
                      addPin('9');
                    },
                  ),
                  const SizedBox(
                    width: 60,
                    height: 60,
                  ),
                  CostumInputButton(
                    title: '0',
                    onTap: () {
                      addPin('0');
                    },
                  ),
                  GestureDetector(
                    onTap: () {
                      deletePin();
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
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
