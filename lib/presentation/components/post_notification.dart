import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/reactions_type.dart';
import 'package:flutter/material.dart';

class PostNotification extends StatelessWidget {
  const PostNotification({Key? key, required this.userProfileImageUrl, required this.userName, this.reactionType,}) : super(key: key);

  final String userProfileImageUrl;
  final String userName;
  final ReactionsType? reactionType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ImageWithBadge(imageUrl: userProfileImageUrl, reactionType: reactionType),
        gap8,
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: blackColor,
                  ),
                  children: [
                    TextSpan(
                      text: userName,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' posted in ',
                    ),
                    TextSpan(
                      text: 'Creative media :\n',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Hello please tell me where is the interface design class is heild?, hi omar i am here',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ]
                ),
              ),
              gap2,
              Text(
                'Today at 17:21',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: greyColor,
                ),
              )
            ],
          ),
        ),
        gap8,
        ClipRRect(
          borderRadius: circular8,
          child: Image.network(
          'https://images.unsplash.com/photo-1536129808005-fae894214c73?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
          fit: BoxFit.cover,
          width: size48,
          height: size48,
          ),
        )
      ],
    );
  }

}
