import 'package:broker/core/widgets/custom_back.dart';
import 'package:broker/core/widgets/custom_text_field.dart';
import 'package:broker/core/widgets/phone_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomBack(title: 'Create an account'),
            
            Row(
              children: [
                Expanded(child: CustomTextFrom(label: 'label', hint: 'hint')),
                Expanded(child: CustomTextFrom(label: 'label', hint: 'hint')),
              ],
            ),
            PhoneField(),
          ],
        ),
      ),
    );
  }
}

