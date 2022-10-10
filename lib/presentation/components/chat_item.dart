import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  const ChatItem(
      {Key? key,
      required this.title,
        required this.badgeNum,
      this.description = '',
        this.imageRadius = size70,
        this.showOnlineState = true,
        this.reaction,
      this.badgeColor = blueColor})
      : super(key: key);

  final int badgeNum;
  final String title, description;
  final double imageRadius;
  final Color badgeColor;
  final bool showOnlineState;
  final IconData? reaction;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageWithBadge(imageRadius: imageRadius, showOnlineState: showOnlineState,),
          gap12,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                if (description.isNotEmpty)
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        description,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: grayColor, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                    gap8,
                    Text(
                      '22m',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: grayColor,
                          ),
                    ),
                    gap12,
                  ],
                )
              ],
            ),
          ),
          DecoratedBox(
            position: DecorationPosition.background,
            decoration: BoxDecoration(
              color: badgeColor,
              borderRadius: circular12,
            ),
            child: Padding(
              padding: padding5,
              child: Text(
                  (badgeNum > 1000)? '+1000' :
                badgeNum.toString(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: whiteColor,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
