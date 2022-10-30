import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.fillColor = blueColor,
    this.textColor = whiteColor,
    this.leadingIcon,
    required this.onPressed,
    this.width,
    this.height = size48,
    this.borderRadius,
  }) : super(key: key);

  final String text;
  final Color fillColor, textColor;
  final IconData? leadingIcon;
  final VoidCallback onPressed;
  final double? width;
  final double height;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? circular12,
          color: fillColor,
        ),
        child: TextButton(
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              if (leadingIcon != null)
                Row(
                  children: [
                    Icon(
                      leadingIcon,
                      color: whiteColor,
                    ),
                    gap8,
                  ],
                ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: textColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
