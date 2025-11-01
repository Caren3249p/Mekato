import 'package:flutter/material.dart';
import 'package:mekato/ui/core/mekato_styles.dart';

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
    final double _width = 100;
    final double _height = 100;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.asset(
            imagePath,
            width: _width,
            height: _height,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          width: _width,
          child: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: MekatoStyles.textTitleLabelM,
          ),
        ),
        if (subtitle != null)
          Text(
            subtitle!,
            style: MekatoStyles.textContentLabelM,
            textAlign: TextAlign.start,
          ),
      ],
    );
  }
}
