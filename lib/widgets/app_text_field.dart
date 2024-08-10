import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../core/utils/colors.dart';
import 'app_text.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    required this.label,
    required this.hint,
    this.validator,
    this.secure = false,
  }) : super(key: key);

  final String label;
  final String hint;
  final String? Function(String? v)? validator;
  final bool secure;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool secure = false;

  @override
  void initState() {
    secure = widget.secure;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          title: widget.label,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 8),
        TextFormField(
          cursorColor: AppColors.primary,
          validator: widget.validator,
          obscureText: secure,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            hintText: widget.hint,
            suffixIcon: widget.secure ? InkWell(
              onTap: () => setState(() => secure = !secure),
              child: Icon(
                secure ? FontAwesomeIcons.solidEyeSlash : FontAwesomeIcons.solidEye,
                size: 16,
                color: AppColors.grey,
              ),
            ) : SizedBox(),
            hintStyle: TextStyle(
              color: AppColors.grey,
              fontSize: 12,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            enabledBorder: getBorder(color: AppColors.grey),
            focusedBorder: getBorder(color: AppColors.primary),
            errorBorder: getBorder(color: AppColors.red),
            focusedErrorBorder: getBorder(color: AppColors.red),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder getBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: color,
      ),
    );
  }
}
