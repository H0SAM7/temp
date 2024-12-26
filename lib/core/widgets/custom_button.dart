import 'package:broker/core/styles/text_styles.dart';
import 'package:broker/core/utils/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.color, this.onTap,
  });
  final String title;
  final Color? color;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 250,
          height: 45, 
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color ?? blue500,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Center(
          
              child: 
              Text(
                title,
                textAlign: TextAlign.left,
                style: AppStyles.style14(context),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
