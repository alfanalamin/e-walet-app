import 'package:ewallet/common/app_colors.dart';
import 'package:ewallet/common/app_fonts.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  final String title;
  final String hint;
  final bool obscureText;
  final TextEditingController? controller;
  final bool showVisibilityIcon; // Tambahkan parameter baru

  const CustomFormField({
    Key? key,
    required this.title,
    this.hint = '',
    this.obscureText = false,
    this.controller,
    this.showVisibilityIcon = false, // Inisialisasi parameter baru
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: AppTheme.appTextTheme.smallNoneMedium!.copyWith(
            color: BaseColors.neutral900,
            fontFamily: 'Poppins',
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          obscureText: widget.obscureText ? _obscureText : false,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle: AppTheme.appTextTheme.smallNoneMedium!
                .copyWith(color: BaseColors.neutral400, fontFamily: 'Poppins'),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(
                color: BaseColors.neutral200,
              ),
            ),
            contentPadding: const EdgeInsets.all(12),
            suffixIcon: widget.showVisibilityIcon && widget.obscureText
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(
                      _obscureText
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: BaseColors.neutral400,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
