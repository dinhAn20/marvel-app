import 'package:flutter/material.dart';
import 'package:marvel_app/core/styles.dart';

class SectionHeaderWidget extends StatelessWidget {
  const SectionHeaderWidget({super.key, required this.title, this.onPressed});
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: textStyleBold),
        GestureDetector(
          onTap: onPressed,
          child: const Text('Ver tudo', style: textStyleMedium14),
        ),
      ],
    );
  }
}
