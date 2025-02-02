import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:broker/core/widgets/custom_back.dart';
import 'package:broker/core/widgets/custom_button.dart';
import 'package:broker/core/widgets/custom_text_field.dart';
import 'package:broker/features/auth/widgets/verify_option.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneViaView extends StatelessWidget {
  const PhoneViaView({super.key});
  static String id = 'PhoneViaView';
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
                'We have sent a confirmation code to mo*****@g****.****. Enter it below  to sign in.',
                style: AppStyles.style14(context),
              ),
            ),
              const SizedBox(
              height: 20,
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Don’t receive? Resend it',style: AppStyles.style14(context).copyWith(color: moveColor))),
            ),
             const SizedBox(
              height: 20,
            ),
           
            PinCodeTextField(
              appContext: context,
              length: 4, // Number of OTP digits
             // controller: otpController,
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(8),
                fieldHeight: 60,
                fieldWidth: 75,
                activeFillColor: moveColor,
                inactiveFillColor: Colors.grey[200],
                selectedFillColor: Colors.blue[100],
                errorBorderColor:Colors.red,
                activeColor: Colors.grey[200],
                disabledColor:Colors.grey[200],
                inactiveColor: Colors.grey[200],
              ),
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
