import 'package:facebook_clone/presentation/components/pinned_groups.dart';
import 'package:facebook_clone/presentation/components/rounded_image_with_description.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';

class MyGroupsPage extends StatelessWidget {
  MyGroupsPage({Key? key}) : super(key: key);

  final List<String> groupImages = [
    'https://www.thisisanfield.com/wp-content/uploads/P2022-10-04-Liverpool_Rangers-45-1.jpg',
    'https://i.shgcdn.com/fe14ddba-4af4-4e0f-aa6c-dfc91890cef2/-/format/auto/-/preview/3000x3000/-/quality/lighter/',
    'https://geographical.co.uk/wp-content/uploads/somalaya-mountain-range-title.jpg',
    'https://c4.wallpaperflare.com/wallpaper/442/475/703/war-and-army-wallpaper-preview.jpg',
    'https://www.nato.int/nato_static_fl2014/assets/pictures/images_mfu/2022/3/11b/220311b-001.jpg',
    'https://imageio.forbes.com/specials-images/imageserve/5faad4255239c9448d6c7bcd/Best-Animal-Photos-Contest--Close-Up-Of-baby-monkey/960x0.jpg?format=jpg&width=960',
    ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          expandGap12(color: brightGreyColor),
          Padding(
            padding: EdgeInsets.only(left: size16),
            child: PinnedGroups(),
          ),
          expandGap12(color: brightGreyColor),
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
                                color: greyColor,
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
            itemCount: groupImages.length,
            itemBuilder: (context, index) => RoundedImageWithDescription(
              verticalArrange: false,
              imageRadius: size86,
              borderRadius: circular8,
              text1: 'Minimalism',
              text2: 'Updated 14 minutes ago',
              imageUrl: groupImages[index],
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
