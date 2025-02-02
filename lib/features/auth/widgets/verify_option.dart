

import 'package:broker/core/utils/colors.dart';
import 'package:flutter/material.dart';

class VerifyOptionBox extends StatelessWidget {
  const VerifyOptionBox({
    super.key,
    required this.title,
    required this.leading,
    required this.trailing, this.onTap,
  });
final void Function()? onTap;
  final String title, leading, trailing;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: moveColor, width: 1), 
          borderRadius: BorderRadius.circular(8), 
        ),
      
        child: ListTile(
          title: Text(title,style: TextStyle(
            color: moveColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),),
          leading: Image.asset(leading),
          trailing: Image.asset(trailing),
        ),
      ),
    );
  }
}
