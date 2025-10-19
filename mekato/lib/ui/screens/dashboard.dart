import 'package:flutter/material.dart';
import 'package:mekato/ui/widgets/menu_widget.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [SizedBox(height: 30), MenuWidget()],
    );
  }
}
