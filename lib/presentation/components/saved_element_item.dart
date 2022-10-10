import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';


class SavedElementItem extends StatelessWidget {
  const SavedElementItem({Key? key, required this.postImageUrl, required this.postDescription, required this.postType, required this.savedFrom}) : super(key: key);

  final String postImageUrl;
  final String postDescription;
  final String postType;
  final String savedFrom;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(borderRadius: circular12, child: Image.network(postImageUrl, fit: BoxFit.cover, width: size86, height: size86,)),
        gap12,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                postDescription,
                style: Theme.of(context).textTheme.titleLarge,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              gap4,
              Text(
                postType,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              gap4,
              Text(
                savedFrom,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          ),
        ),
        SizedBox(
          width: size24,
          height: size24,
          child: IconButton(onPressed: (){
            ///TODO: show more options for saved elements
          }, icon: Icon(
            moreIcon,
          )),
        )
      ],
    );
  }
}
