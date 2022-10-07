import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';

class ProfileState extends StatelessWidget {
  const ProfileState({
    Key? key,
    this.radius = size36,
    required this.imageUrl,
    this.thereIsNewState = true,
    this.showAddIcon = true,
  }) : super(key: key);

  final String imageUrl;
  final double radius;
  final bool thereIsNewState;
  final bool showAddIcon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius + 4,
      backgroundColor: thereIsNewState ? blueColor : whiteColor,
      child: CircleAvatar(
          radius: radius + 2,
          backgroundColor: whiteColor,
          child: SizedBox.fromSize(
            size: Size.fromRadius(radius),
            child: Stack(
              children: [
                CircleAvatar(
                  radius: radius,
                  backgroundImage: Image.network(
                      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.efEAchZYo4PX1sGg-MKV1gHaE3%26pid%3DApi&f=1')
                      .image,
                ),
                if (showAddIcon)
                Align(
                  alignment: Alignment.bottomRight,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                        color: blueColor,
                        border: Border.all(
                          color: whiteColor,
                        )),
                    child: Icon(
                      addIcon,
                      color: whiteColor,
                      size: radius / 2,
                    ),
                  ),
                ),

              ],
            ),
          )),

    );
  }
}
