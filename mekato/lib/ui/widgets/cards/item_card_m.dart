import 'package:flutter/material.dart';

class ItemCardM extends StatelessWidget {
  final String imagePath;
  final String title;
  final String? subtitle;

  const ItemCardM({
    super.key,
    required this.imagePath,
    required this.title,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            imagePath,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Text(title),
        if (subtitle != null) Text(subtitle!),
      ],
    );
  }
}
