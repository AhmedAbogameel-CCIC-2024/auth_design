import 'package:flutter/material.dart';
import 'package:hello_flutter/core/utils/colors.dart';
import 'views/login/view.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginView(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: AppColors.white,
        appBarTheme: AppBarTheme(
          color: AppColors.white,
          elevation: 0.0,
          shadowColor: AppColors.white,
          scrolledUnderElevation: 0,
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
