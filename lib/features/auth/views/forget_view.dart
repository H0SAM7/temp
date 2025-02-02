import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:broker/core/widgets/custom_back.dart';
import 'package:broker/features/auth/widgets/verify_option.dart';
import 'package:flutter/material.dart';

class ForgetView extends StatelessWidget {
  const ForgetView({super.key});
  static String id = 'ForgetView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const CustomBack(
              title: 'Forget Password?',
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Text(
                'We’ll help you reset your password. Choose how you’d like to receive the reset instructions:',
                style: AppStyles.style14(context),
              ),
            ),
              const SizedBox(
              height: 20,
            ),
            const VerifyOptionBox(title: 'Send code via email',leading:Assets.iconsMailIcon ,trailing:Assets.iconsGoIcon ,),
            const SizedBox(
              height: 30,
            ),
              const VerifyOptionBox(title: 'Send code via Phone number',leading:Assets.iconsPhoneIcon ,trailing:Assets.iconsGoIcon ,),
          ],
        ),
      ),
    );
  }
}
