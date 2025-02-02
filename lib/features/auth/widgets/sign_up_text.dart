
import 'package:broker/core/utils/colors.dart';
import 'package:broker/features/auth/views/register_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUpText extends StatelessWidget {
  const SignUpText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Don't have an account? ",
        style: const TextStyle(
            color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500),
        children: [
          TextSpan(
            text: "Sign up",
            style: TextStyle(
                color: moveColor, fontSize: 16, fontWeight: FontWeight.bold),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
            Navigator.pushNamed(context, RegisterView.id);
              },
          ),
        ],
      ),
    );
  }
}
