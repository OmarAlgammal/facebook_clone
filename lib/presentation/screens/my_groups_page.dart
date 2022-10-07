import 'package:facebook_clone/presentation/components/pinned_groups.dart';
import 'package:facebook_clone/presentation/components/rounded_image_with_description.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';

class MyGroupsPage extends StatelessWidget {
  const MyGroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          expandGap12(color: brightGrayColor),
          Padding(
            padding: EdgeInsets.only(left: size16),
            child: PinnedGroups(),
          ),
          expandGap12(color: brightGrayColor),
          Padding(
            padding: paddingH16,
            child: Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                        text: 'All groups   ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text: '24',
                              style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                color: grayColor,
                              ))
                        ]),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: padding0,
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Recently added',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: blueColor),
                      ),
                      gap8,
                      Icon(
                        arrowUpDownIcon,
                        color: blueColor,
                        size: size18,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          gap8,
          ListView.separated(
            shrinkWrap: true,
            padding: paddingH16,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 11,
            itemBuilder: (context, index) => RoundedImageWithDescription(
              verticalArrange: false,
              imageRadius: size56,
              borderRadius: circular8,
              text1: 'Minimalism',
              text2: 'Updated 14 minuts ago',
              imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
              onPressed: (){
                Navigator.pushNamed(context, AppRoutes.groupPage);
              },
            ),
            separatorBuilder: (context, index) => gap12,
          ),
          gap12,
        ],
      ),
    );
  }
}
