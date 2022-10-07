import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/cupertino.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({Key? key, required this.icon, required this.color, required this.onPressed})
      : super(key: key);

  final IconData icon;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: padding0,
      onPressed: onPressed,
      minSize: double.minPositive,
      child: Icon(icon, color: color,),
    );
  }
}
