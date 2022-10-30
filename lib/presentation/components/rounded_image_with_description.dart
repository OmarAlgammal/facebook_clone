import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';

class RoundedImageWithDescription extends StatelessWidget {
  const RoundedImageWithDescription({
    Key? key,
    this.imageUrl,
    this.verticalArrange = true,
    this.imageRadius,
    this.showSaveIcon = false,
    this.text1,
    this.text2,
    this.text1Style,
    this.text2Style,
    this.centerText1 = false,
    this.borderRadius = circular12,
    required this.onPressed,
  }) : super(key: key);

  final BorderRadius borderRadius;
  final VoidCallback onPressed;
  final double? imageRadius;
  final String? text1, text2;
  final bool showSaveIcon, verticalArrange;
  final TextStyle? text1Style, text2Style;
  final String? imageUrl;
  final bool centerText1;

  /// TODO: make imager url required

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: imageRadius,
        child: (verticalArrange) ? inColumn(context) : inRow(context),
      ),
    );
  }

  Column inColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children(context),
    );
  }

  Row inRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children(context),
    );
  }

  List<Widget> children(BuildContext context) => [
        Stack(
          children: [
            ClipRRect(
              borderRadius: borderRadius,
              child: Image.network(
                imageUrl ?? 'https://media.istockphoto.com/vectors/pants-cartoon-vector-id1076492576?k=20&m=1076492576&s=612x612&w=0&h=905nrZDJOI6SIVT_9nG3VbvE_vuZXBXUv5luZOXOyxU=',
                height: imageRadius,
                width: imageRadius,
                fit: (imageRadius == null)? BoxFit.contain : BoxFit.fill,
              ),
            ),
            if (showSaveIcon)
              IconButton(
                onPressed: () {},
                icon: Icon(
                  bookmarkOutLinedIcon,
                  color: whiteColor,
                ),
              )
          ],
        ),
    if (!verticalArrange)
    gap12,
        Expanded(
          child: Column(
            children: [
              if (!verticalArrange) gap8,
              if (text1 != null) gap8,
              if (text1 != null)
                Row(
                    children: [
                Expanded(
                  child: Text(
                    text1!,
                    maxLines: 2,
                    textAlign: (centerText1)? TextAlign.center : TextAlign.start,
                    style: text1Style ??
                        Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: blackColor,
                          overflow: TextOverflow.ellipsis,
                        ),
                  ),
                ),
                    ],
                  ),
              if (text2 != null) gap8,
              if (text2 != null)
                Row(
                  children: [
                    Text(
                        text2!,
                        style: text2Style ??
                            Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: blackColor,
                            )),
                  ],
                ),
            ],
          ),
        )
      ];
}
