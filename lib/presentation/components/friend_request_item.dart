import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class FriendRequestItem extends StatelessWidget {
  const FriendRequestItem({Key? key, this.userName,  this.imageUrl,  this.mutualFriendsNum}) : super(key: key);

  final String? userName;
  final String? imageUrl;
  final String? mutualFriendsNum;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageWithBadge(
          imageUrl: imageUrl?? '',
          showOnlineState: false,
          imageRadius: size64,
        ),
        gap12,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName?? '',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ///TODO: create friends circles suggestions
                Text(
                  '$mutualFriendsNum mutual friends',
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: grayColor,
                  ),
                )
              ],
            ),
            Row(
              children: [
                RoundedButton(text: 'Add a friend', onPressed: (){
                  ///TODO: complete add friend action
                },
                  buttonHeight: size36,
                ),
                gap12,
                RoundedButton(text: 'Remove', onPressed: (){
                  /// TODO: complete remove action
                },
                  buttonHeight: size36,
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
