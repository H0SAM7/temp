import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:broker/core/widgets/custom_back.dart';
import 'package:broker/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ResetPassSuccView extends StatelessWidget {
  const ResetPassSuccView({super.key});
static String id='ResetPassSuccView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomBack(title: 'Reset Password',),
          Text('Password Reset Successfully',style: AppStyles.style22Black(context).copyWith(color: moveColor),),
          Image.asset(Assets.imagesResetPassSuccessful),
          const SizedBox(height: 20),
          CustomButton(title: 'Login')
        ],
      ),
    );
  }
}