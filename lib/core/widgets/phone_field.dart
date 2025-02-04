import 'package:broker/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:intl_phone_field/phone_number.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({super.key, this.onChanged});

  final void Function(PhoneNumber)? onChanged; 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: IntlPhoneField(
        decoration: InputDecoration(
          labelText: 'Phone Number *',
          border:outlineInputBorder,
        ),
        
        initialCountryCode: 'EG',
        onChanged: onChanged, 
      
      ),
    );
  }
}



