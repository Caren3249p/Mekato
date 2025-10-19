import 'package:flutter/material.dart';
import 'package:mekato/ui/widgets/cards/item_card_m.dart';

class MenuWidget extends StatefulWidget {
  const MenuWidget({super.key});

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Text("Menu"),
            SizedBox(width: 20),
            Icon(Icons.arrow_right_alt_rounded, color: Colors.black),
          ],
        ),
        SizedBox(
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              ItemCardM(imagePath: "assets/images/hamb.jpg", title: "Hamburguesa"),
              SizedBox(width: 14),
              ItemCardM(imagePath: "assets/images/hamb.jpg", title: "Hamburguesa"),
              SizedBox(width: 14),
              ItemCardM(imagePath: "assets/images/hamb.jpg", title: "Hamburguesa"),
              SizedBox(width: 14),
              ItemCardM(imagePath: "assets/images/hamb.jpg", title: "Hamburguesa"),
              SizedBox(width: 14),
              ItemCardM(imagePath: "assets/images/hamb.jpg", title: "Hamburguesa"),
              // Container(
              //   width: 120,
              //   color: Colors.red,
              //   child: Center(child: Text("Elemento 1")),
              // ),
              // Container(
              //   width: 120,
              //   color: Colors.green,
              //   child: Center(child: Text("Elemento 2")),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
