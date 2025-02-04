import 'package:broker/constants.dart';
import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/assets.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:broker/core/widgets/custom_button.dart';
import 'package:broker/core/widgets/custom_text_field.dart';
import 'package:broker/features/auth/views/forget_view.dart';
import 'package:broker/features/auth/views/register_view.dart';
import 'package:broker/features/auth/widgets/sign_up_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static String id = 'LoginViewLoginView';
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height * .15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                Assets.imagesVector,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                appName,
                style: AppStyles.style32(context, moveColor),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Log in to your account',
            style: AppStyles.style22Black(context),
          ),
          SizedBox(
            height: 30,
          ),
          CustomTextFrom(
              label: 'Email or phone number',
              hint: 'Enter your email or phone number'),
          CustomTextFrom(
            label: 'Password',
            hint: 'Enter your Password',
            isPasswordField: true,
          ),
          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, ForgetView.id);
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Forget Password?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: moveColor,
                      fontSize: 14),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomButton(
            title: 'Login',
            color: moveColor,
          ),
             const SizedBox(
            height: 21,
          ),
          const SignUpText(),
        ],
      ),
    );
  }
}
