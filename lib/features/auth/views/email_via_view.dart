import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:broker/core/widgets/custom_back.dart';
import 'package:broker/core/widgets/custom_button.dart';
import 'package:broker/core/widgets/custom_text_field.dart';
import 'package:broker/features/auth/widgets/verify_option.dart';
import 'package:flutter/material.dart';

class EmailViaView extends StatelessWidget {
  const EmailViaView({super.key});
  static String id = 'EmailViaView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomBack(
              title: 'Check your email',
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                'We have sent a confirmation code to (+20) 12025***78. Enter it below  to sign in.',
                style: AppStyles.style14(context),
              ),
            ),
              const SizedBox(
              height: 20,
            ),
            CustomTextFrom(label: 'code', hint: 'Enter your confirmation code'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Don’t receive? Resend it',style: AppStyles.style14(context).copyWith(color: moveColor))),
            ),
              const SizedBox(
              height: 30,
            ),
            CustomButton(title: 'Verify Code',onTap: (){},)
          ],
        ),
      ),
    );
  }
}
