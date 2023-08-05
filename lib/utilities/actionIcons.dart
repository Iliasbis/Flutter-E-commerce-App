import 'package:flutter/material.dart';

class ActionIcons extends StatelessWidget {
  final IconData icon;
  final Color color;
  final Color backColor;
  final double size;
  const ActionIcons(
      {required this.icon,
      this.color = Colors.black,
      this.backColor = Colors.grey,
      this.size = 40,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2),
        color: backColor,
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
