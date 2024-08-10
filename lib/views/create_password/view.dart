import 'package:flutter/material.dart';
import 'package:hello_flutter/core/utils/validator.dart';
import 'package:hello_flutter/views/login/view.dart';
import 'package:hello_flutter/views/register/view.dart';
import 'package:hello_flutter/widgets/app_button.dart';

import '../../core/route_utils/route_utils.dart';
import '../../core/utils/colors.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_field.dart';
import '../forget_password/view.dart';

class CreatePasswordView extends StatelessWidget {
  CreatePasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 24),
          AppText(
            title: "Create your new password",
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
          SizedBox(height: 40),
          AppTextField(
            label: 'New Password',
            hint: 'at least 8 character',
            secure: true,
            validator: Validator.password,
          ),
          SizedBox(height: 16),
          AppTextField(
            label: 'Confirm New Password',
            hint: 'at least 8 character',
            secure: true,
            validator: Validator.password,
          ),
          SizedBox(height: 40),
          AppButton(
            title: 'Submit',
            onTap: () {
              RouteUtils.pushAndRemoveAll(context, LoginView());
            },
          ),
        ],
      ),
    );
  }
}
