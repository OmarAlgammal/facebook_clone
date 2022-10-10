import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/reactions.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';

class PostDesign extends StatelessWidget {
  const PostDesign({Key? key, this.onPressed}) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Column(
          children: [
            gap24,
            Padding(
              padding: paddingH16,
              child: Row(
                children: [
                  ImageWithBadge(
                    imageUrl: null,
                  ),
                  gap12,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Omar Algammal',
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                )),
                        gap2,
                        Text(
                          'August 15 at 15:36',
                          style:
                              Theme.of(context).textTheme.titleSmall!.copyWith(
                                    color: grayColor,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: size24,
                    height: size24,
                    child: IconButton(
                      onPressed: onPressed,
                      padding: padding0,
                      icon: Icon(
                        moreIcon,
                      ),
                      color: brightGrayColor,
                    ),
                  ),
                ],
              ),
            ),
            gap16,
            Padding(
              padding: paddingH16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'According to Google, quarter of a million people in the UK who wanted to find more about ‘speeches’ did so by typing ‘speach’ into the search engine '
                    'Whether you are looking for help with your speech, speach, or even a speych, I’d be delighted to help',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: size24,
                    child: TextButton(
                      onPressed: onPressed,
                      child: Text(
                        'See more',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: blueColor,
                            ),
                      ),
                      style: TextButton.styleFrom(
                        padding: padding0,
                      )
                    ),
                  )
                ],
              ),
            ),
            gap12,
            ///TODO: if there is more than one file remove padding from end
            Padding(
              padding: paddingH16,
              child: ClipRRect(
              borderRadius: circular8,
              child: Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.efEAchZYo4PX1sGg-MKV1gHaE3%26pid%3DApi&f=1')),
            ),
            gap12,
            Padding(
              padding: const EdgeInsets.only(left: size16),
              child: Reactions(),
            ),
            gap16,
            Padding(
              padding: paddingH16,
              child: SizedBox(
                height: size24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index){
                        //TODO: edit padding only left
                        return Padding(
                          padding: const EdgeInsets.only(right: size8),
                          child: ClipRRect(
                            borderRadius: circular4,
                            child: Image.network('https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.efEAchZYo4PX1sGg-MKV1gHaE3%26pid%3DApi&f=1',
                              fit: BoxFit.cover,
                            width: size24,),
                          ),
                        );
                      },

                    ),
                    Expanded(
                      //TODO: edit padding only right
                      child: WritingBox(onPressed: (){}, hint: '24 Comments', enabled: false, autofocus: false, filled: false,),
                    ),
                    SizedBox(
                      height: size24,
                      width: size24,
                      child: IconButton(
                        padding: padding0,
                        onPressed: onPressed,
                        icon: Icon(
                          shareIcon,
                        ),
                      ),
                    ),
                    gap8,
                    Text(
                      '12',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: grayColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            gap12,
            expandGap2(color: brightGrayColor),
            gap12,
            Padding(
              padding: paddingH16,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ImageWithBadge(imageRadius: size28, imageUrl: 'imageUrl', showOnlineState: false,),
                  gap12,
                  Expanded(
                    child: WritingBox(filled: true, enabled: true, autofocus: false, hint: 'Write a Comment',),
                  ),
                  IconButton(
                    padding: padding0,
                    iconSize: size24,
                    onPressed: (){},
                    icon: Icon(
                      gifIcon,
                      color: grayColor,
                      size: size24,
                    ),
                  ),IconButton(
                    color: Colors.red,
                    padding: padding0,
                    iconSize: size24,
                    onPressed: (){},
                    icon:Icon(
                      smileIcon,
                      color: grayColor,
                      size: size24,
                    ),
                  ),
                ],
              ),
            ),
            gap24,
          ],
        ),
      ],
    );
  }
}
