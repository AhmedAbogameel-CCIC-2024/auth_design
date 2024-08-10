import 'package:flutter/material.dart';
import 'package:hello_flutter/core/utils/validator.dart';
import 'package:hello_flutter/views/register/view.dart';
import 'package:hello_flutter/widgets/app_button.dart';

import '../../core/route_utils/route_utils.dart';
import '../../core/utils/colors.dart';
import '../../widgets/app_pin_code_field.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_field.dart';
import '../create_password/view.dart';

class OTPView extends StatelessWidget {
  OTPView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 24),
          AppText(
            title: "Verify your identity",
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
          SizedBox(height: 40),
          AppPinCodeField(),
          SizedBox(height: 40),
          AppButton(
            title: 'Submit',
            onTap: () {
              RouteUtils.push(context, CreatePasswordView());
            },
          ),
        ],
      ),
    );
  }
}
