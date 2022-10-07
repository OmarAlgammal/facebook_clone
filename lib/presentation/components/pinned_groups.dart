import 'package:facebook_clone/presentation/components/rounded_image_with_description.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class PinnedGroups extends StatelessWidget {
  const PinnedGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: whiteColor,
      ),
      child: Padding(
        padding: paddingV8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Pinned groups',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                SizedBox(
                  height: 24,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: padding0,
                    ),
                    child: Text(
                      'Edit',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                          ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                )
              ],
            ),
            gap12,
            SizedBox(
              height: 120,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index){
                  if (index == 2)  return RoundedImageWithDescription(imageRadius: size80, imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75', text1: 'Best Places In Egypt And In The World', onPressed: (){},);
                  return RoundedImageWithDescription(imageRadius: size80, text1: 'Behance', imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75', onPressed: (){
                    //TODO: complete this action
                  },);
                },
                separatorBuilder: (context, index) => gap12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
