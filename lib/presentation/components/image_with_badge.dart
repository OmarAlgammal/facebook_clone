import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/reactions_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWithBadge extends StatelessWidget {
  final Map<ReactionsType, String> reactions = {
    ReactionsType.like: likeSvgIcon,
    ReactionsType.sad: sadSvgIcon,
    ReactionsType.love: loveSvgIcon,
    ReactionsType.angry: angrySvgIcon,
    ReactionsType.laughing: laughingSvgIcon,
    ReactionsType.shocked: shockedSvgIcon,
  };

  ImageWithBadge(
      {Key? key,
      this.imageRadius = size28,
      this.imageUrl,
      this.reactionType,
        this.showWhiteCircle = false,
      this.showOnlineState = false})
      : assert(showOnlineState && reactionType == null ||
            !showOnlineState && reactionType != null ||
            !showOnlineState && reactionType == null),
        super(key: key);

  final bool showOnlineState;
  final double imageRadius;
  final String? imageUrl;
  final bool showWhiteCircle;
  final ReactionsType? reactionType;

  @override
  Widget build(BuildContext context) {
    debugPrint('reaction is ${reactionType == null}');
    double onlineStateBoxRadius = imageRadius / 1.5;
    double onlineStateRadius = imageRadius / 7;
    double reactionRadius = imageRadius / 3.1;
    return CircleAvatar(
      radius: (showWhiteCircle) ? imageRadius + size1 : imageRadius,
      backgroundColor: whiteColor,
      child: Stack(
        children: [
          CircleAvatar(
            radius: imageRadius,
            backgroundImage: Image.network(
                imageUrl?? 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.efEAchZYo4PX1sGg-MKV1gHaE3%26pid%3DApi&f=1')
                .image,
          ),
          if (showOnlineState)
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: onlineStateBoxRadius,
                height: onlineStateBoxRadius,
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: onlineStateRadius + size2,
                    backgroundColor: whiteColor,
                    child: CircleAvatar(
                      radius: onlineStateRadius,
                      backgroundColor: greenColor,
                    ),
                  ),
                ),
              )
            ),
          if (reactionType != null)
          Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: reactionRadius,
                child: SvgPicture.asset(reactions[reactionType]!,
                    fit: BoxFit.scaleDown),
              ),
            ),
        ],
      ),
    );
  }
}
