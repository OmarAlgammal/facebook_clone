import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({Key? key, required this.icon, required this.iconColor, required this.text, required this.onPressed}) : super(key: key);

  final IconData icon;
  final Color iconColor;
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(onPressed: onPressed,
          icon: Icon(
            icon,
            size: size36,
            color: iconColor,
          ),),
        Text(
          text,
        )
      ],
    );
  }
}
