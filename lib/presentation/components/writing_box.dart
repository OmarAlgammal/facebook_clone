import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WritingBox extends StatelessWidget {
  const WritingBox(
      {Key? key,
      this.height = size48,
      this.hint,
        this.text = '',
      this.enabled = true,
      this.autofocus = false,
      this.filled = false,
      this.showSuffix = false,
        this.suffixIcon,
      this.onPressed,
        this.hintStyle,
      this.withOpacity = false})
      : super(key: key);
  final double height;
  final String? hint;
  final String text;
  final bool enabled;
  final bool autofocus;
  final bool filled;
  final bool showSuffix;
  final Icon? suffixIcon;
  final bool withOpacity;
  final VoidCallback? onPressed;
  final TextStyle? hintStyle;

  static TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        height: height,
        child: TextField(
          controller: _controller..text = text,
          style: Theme.of(context).textTheme.bodyMedium,
          autofocus: autofocus,
          decoration: InputDecoration(
            suffixIcon: showSuffix || suffixIcon == null
                ? SvgPicture.asset(
                    searchSvgIcon,
                    color: greyColor,
                    fit: BoxFit.scaleDown,
                  )
                : suffixIcon,
            enabled: enabled,
            hintText: hint,
            hintStyle:  hintStyle
                ??
                Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: greyColor,
                ),
            fillColor:
                (withOpacity) ? brightGreyColor.withOpacity(.5) : brightGreyColor,
            filled: filled,
            border: OutlineInputBorder(
              borderRadius: circular8,
              borderSide: BorderSide.none,
            ),
            contentPadding: paddingH16,
          ),

        ),
      ),
    );
  }
}
