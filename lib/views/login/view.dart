import 'package:flutter/material.dart';
import 'package:hello_flutter/core/utils/validator.dart';
import 'package:hello_flutter/views/register/view.dart';
import 'package:hello_flutter/widgets/app_button.dart';

import '../../core/route_utils/route_utils.dart';
import '../../core/utils/colors.dart';
import '../../widgets/app_text.dart';
import '../../widgets/app_text_field.dart';
import '../forget_password/view.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            SizedBox(height: 64),
            Row(
              children: [
                AppText(
                  title: "Login to",
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
              label: 'Password',
              hint: 'at least 8 character',
              secure: true,
              validator: Validator.password,
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: AppText(
                title: 'Forget Password',
                decoration: TextDecoration.underline,
                color: AppColors.grey,
                onTap: () => RouteUtils.push(context, ForgetPasswordView()),
              ),
            ),
            SizedBox(height: 24),
            AppButton(
              title: 'Login',
              onTap: () {
                formKey.currentState!.validate();
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppText(
                  title: "Don't have an account? ",
                  color: AppColors.grey,
                ),
                AppText(
                  title: 'Signup',
                  decoration: TextDecoration.underline,
                  color: AppColors.grey,
                  onTap: () => RouteUtils.pushReplacement(context, RegisterView()),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
