import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WritingBox extends StatelessWidget {
  const WritingBox(
      {Key? key,
      this.height = size48,
      required this.hint,
      this.enabled = true,
      this.autofocus = false,
      this.filled = false,
      this.showSuffix = false,
      this.onPressed,
        this.hintStyle,
      this.withOpacity = false})
      : super(key: key);
  final double height;
  final String hint;
  final bool enabled;
  final bool autofocus;
  final bool filled;
  final bool showSuffix;
  final bool withOpacity;
  final VoidCallback? onPressed;
  final TextStyle? hintStyle;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: height,
        child: TextField(
          autofocus: autofocus,
          decoration: InputDecoration(
            prefixIcon: showSuffix
                ? SvgPicture.asset(
                    searchSvgIcon,
                    color: grayColor,
                    fit: BoxFit.scaleDown,
                  )
                : null,
            enabled: enabled,
            hintText: hint,
            hintStyle:  hintStyle
                ??
                Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: grayColor,
                ),
            fillColor:
                (withOpacity) ? brightGrayColor.withOpacity(.5) : brightGrayColor,
            filled: filled,
            border: OutlineInputBorder(
              borderRadius: circular8,
              borderSide: BorderSide.none,
            ),
            contentPadding: paddingH16,
          ),
          style: TextStyle(
            color: grayColor,
          ),
        ),
      ),
    );
  }
}
