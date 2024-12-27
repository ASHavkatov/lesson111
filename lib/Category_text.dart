import 'package:flutter/material.dart';
import 'package:lesson111/utils/utils.dart';


class Category_Text extends StatelessWidget {
  const Category_Text({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: AppColor.textColor,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
    );
  }
}
