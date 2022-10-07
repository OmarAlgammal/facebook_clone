import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, required this.text, this.fillColor = blueColor, this.textColor = whiteColor, this.leadingIcon, required this.onPressed, this.buttonWidth, this.buttonHeight = size48,}) : super(key: key);

  final String text;
  final Color fillColor, textColor;
  final IconData? leadingIcon;
  final VoidCallback onPressed;
  final double? buttonWidth;
  final double buttonHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: buttonWidth,
      height: buttonHeight,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: circular12,
          color: fillColor,
        ),
        child: Expanded(
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
      ),
    );
  }
}
