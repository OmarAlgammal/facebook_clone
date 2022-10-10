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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWithBadge(
          imageUrl: imageUrl?? '',
          showOnlineState: false,
          imageRadius: size86,
        ),
        gap12,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                userName?? '',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              gap4,
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
              gap4,
              Row(
                children: [
                  Expanded(
                    child: RoundedButton(text: 'Add a friend', onPressed: (){
                      ///TODO: complete add friend action
                    },
                      buttonHeight: size36,
                      borderRadius: circular8,
                    ),
                  ),
                  gap12,
                  Expanded(
                    child: RoundedButton(text: 'Remove', onPressed: (){
                      /// TODO: complete remove action
                    },
                      buttonHeight: size36,
                      borderRadius: circular8,
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
