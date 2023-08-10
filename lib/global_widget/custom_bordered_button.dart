import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBorderedElevatedButton extends StatelessWidget {
  final Color color;
  void Function()? onTap;
  final String title;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final double borderRadius;
  CustomBorderedElevatedButton({
    super.key,
    required this.onTap,
    required this.title,
    this.height,
    this.width,
    this.color = Colors.white,
    this.textStyle,
    this.borderRadius = 4,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          minimumSize: Size(
              width ?? MediaQuery.of(context).size.width * 0.45, height ?? 50),
          backgroundColor: const Color(0XffCCF4F1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            side: const BorderSide(
              color: Color(0Xff00C8B8), // Border color
              width: 1, // Border width
            ),
          )),
      child: Text(
        title,
        style: textStyle ??
            const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0Xff00C8B8)),
      ),
    );
  }
}
