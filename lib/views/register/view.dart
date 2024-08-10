import 'package:flutter/material.dart';
import 'package:hello_flutter/views/login/view.dart';
import 'package:hello_flutter/widgets/app_button.dart';

import '../../core/route_utils/route_utils.dart';
import '../../core/utils/colors.dart';
import '../../core/utils/validator.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          SizedBox(height: 24),
          Row(
            children: [
              AppText(
                title: "Signup to",
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
              SizedBox(width: 4),
              AppText(
                title: "Minty Co.",
                fontSize: 22,
                color: AppColors.primary,
              ),
            ],
          ),
          SizedBox(height: 40),
          AppTextField(
            label: 'Email',
            hint: 'email@mail.com',
            validator: Validator.email,
          ),
          SizedBox(height: 16),
          AppTextField(
            label: 'Phone',
            hint: '01xxxxxxxx',
            validator: Validator.phone,
          ),
          SizedBox(height: 16),
          AppTextField(
            label: 'Full Name',
            hint: 'John Doe',
            validator: Validator.fullName,
          ),
          SizedBox(height: 16),
          AppTextField(
            label: 'Password',
            hint: 'at least 8 character',
            secure: true,
            validator: Validator.password,
          ),
          SizedBox(height: 40),
          AppButton(
            title: 'Signup',
            onTap: () {},
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText(
                title: "Have an account? ",
                color: AppColors.grey,
              ),
              AppText(
                title: 'Login',
                decoration: TextDecoration.underline,
                color: AppColors.grey,
                onTap: () => RouteUtils.pushReplacement(context, LoginView()),
              )
            ],
          ),
        ],
      ),
    );
  }
}
