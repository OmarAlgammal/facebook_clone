
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Reactions extends StatelessWidget {
  const Reactions({Key? key, this.isSelected = false}) : super(key: key);

  final bool isSelected;
  static const List<String> reactions = [
    'assets/icons/reactions/like.svg',
    'assets/icons/reactions/love.svg',
    'assets/icons/reactions/laughing.svg',
    'assets/icons/reactions/sad.svg',
    'assets/icons/reactions/angry.svg',
    'assets/icons/reactions/shocked.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size36,
      child: ListView.builder(
        itemCount: reactions.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index){
          return Row(
            children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                    color: brightGreyColor,
                    border: Border.all(
                      color: (isSelected || index == 1)? blueColor : brightGreyColor,
                      width: haveSize1,
                    ),
                    borderRadius: circularInfinity,
                  ),
                  child: Padding(
                    padding: padding6,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: size24,
                            width: size24,
                            child: SvgPicture.asset(reactions[index]),),
                        gap4,
                        Text(
                          '100'
                        ),
                      ],
                    ),
                  ),
              ),
              gap8,
            ],
          );
        },
      ),
    );
  }
}
