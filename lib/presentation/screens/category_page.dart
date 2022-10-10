import 'package:facebook_clone/presentation/components/gride_item.dart';
import 'package:facebook_clone/presentation/components/rounded_image_with_description.dart';
import 'package:facebook_clone/presentation/components/weather_component.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: padding16,
              child: Column(
                children: [
                  Text(
                    'Good day, Omar',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: blueColor,
                        ),
                  ),
                  gap12,
                  WritingBox(
                    hint: 'Search',
                    showSuffix: true,
                    filled: true,
                    enabled: true,
                  ),
                ],
              ),
            ),
            gap16,
            Padding(
              padding: paddingH12,
              child: WeatherComponent(),
            ),
            Padding(
              padding: padding16,
              child: Column(
                children: [
                  gap24,
                  GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: 3,
                    crossAxisSpacing: size36,
                    mainAxisSpacing: size24,
                    padding: paddingH8,
                    children: [
                      GridItem(
                        icon: healthIcon,
                        iconColor: redColor,
                        text: 'Health',
                        onPressed: () {},
                      ),
                      GridItem(
                          icon: friendsIcon,
                          iconColor: brightBlueColor,
                          text: 'Friends',
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.friendsPage);
                          }),
                      GridItem(
                          icon: peopleIcon,
                          iconColor: Colors.purple,
                          text: 'Groups',
                          onPressed: () {
                            Navigator.pushNamed(
                                context, AppRoutes.allGroupsPage);
                          }),
                      GridItem(
                          icon: marketplaceIcon,
                          iconColor: greenColor,
                          text: 'Market',
                          onPressed: () {}),
                      GridItem(
                          icon: memoriesIcon,
                          iconColor: purpleColor,
                          text: 'Memmories',
                          onPressed: () {}),
                      GridItem(
                          icon: bookmarkOutLinedIcon,
                          iconColor: blackColor,
                          text: 'Saved',
                          onPressed: () {
                            Navigator.pushNamed(context, AppRoutes.savedElementsPage);
                          }),
                      GridItem(
                          icon: gameIcon,
                          iconColor: brightBlueColor,
                          text: 'Game',
                          onPressed: () {}),
                      GridItem(
                          icon: eventIcon,
                          iconColor: redColor,
                          text: 'Event',
                          onPressed: () {}),
                      GridItem(
                          icon: jobIcon,
                          iconColor: orangeColor,
                          text: 'Jobs',
                          onPressed: () {}),
                    ],
                  ),
                  gap36,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Marketplace',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        'See All',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                            ),
                      )
                    ],
                  ),
                  gap24,
                  SizedBox(
                    height: 220,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      separatorBuilder: (context, index) {
                        return gap8;
                      },
                      itemBuilder: (context, index) {
                        return RoundedImageWithDescription(
                          imageRadius: 140,
                          text1: 'Pantalon for men it is very comfort',
                          text2: '\$ 14',
                          showSaveIcon: true,
                          imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
                          text2Style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: size24,
                          ),
                          onPressed: () {
                            ///TODO: COMPLETE THIS ACTION
                            Navigator.pushNamed(context, AppRoutes.productPage);
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
