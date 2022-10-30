import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/my_icon.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/modules/news_page.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = ((MediaQuery.of(context).size.height));
    double width = ((MediaQuery.of(context).size.width));
    double size1 = Theme.of(context).textTheme.headlineMedium!.fontSize!;
    double size2 = Theme.of(context).textTheme.bodyLarge!.fontSize!;
    debugPrint(
        'height is $height and width $width and size $size1 and $size2)');
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              pinned: true,
              toolbarHeight: 130,
              snap: true,
              title: Column(
                children: [
                  Padding(
                    padding: paddingH16,
                    child: Column(
                      children: [
                        Text(
                          'Facebook',
                          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: blueColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        gap12,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ImageWithBadge(),
                            gap12,
                            Expanded(
                                child: WritingBox(
                                  onPressed: (){
                                    Navigator.pushNamed(context, AppRoutes.publishingPage);
                                  },
                              height: size36,
                              hint: 'What\'s in your mind',
                              enabled: false,
                              filled: true,
                            )),
                            gap12,
                            MyIcon(
                              icon: imageIcon,
                              color: greyColor,
                              onPressed: () {
                                //TODO: COMPLETE NAVIGATION TO GALLERY
                              },
                            ),
                          ],
                        ),
                        gap24,
                      ],
                    ),
                  ),
                  expandGap2(
                    color: brightGreyColor,
                  ),
                ],
              ),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(49),
                child: Padding(
                  padding: paddingH16,
                  child: Row(
                    children: [
                      Expanded(
                        child: TabBar(
                          isScrollable: true,
                          mouseCursor: MouseCursor.defer,
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: size3,
                          labelColor: blackColor,
                          labelPadding: EdgeInsets.only(right: 16,),
                          indicatorPadding: EdgeInsets.only(right: 16,),
                          labelStyle:
                              Theme.of(context).textTheme.headlineSmall!.copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                          unselectedLabelColor: greyColor,
                          unselectedLabelStyle:
                              Theme.of(context).textTheme.bodyLarge,
                          padding: padding0,
                          tabs: [
                            Tab(
                              text: 'News',
                            ),
                            Tab(
                              text: 'Groups',
                            ),
                            Tab(
                              text: 'Watch',
                            ),
                          ],
                        ),
                      ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     videoIcon,
                      //     color: blueColor,
                      //     size: Theme.of(context).textTheme.headline4!.fontSize,
                      //   ),
                      // ),
                      // IconButton(
                      //   onPressed: () {},
                      //   icon: Icon(
                      //     roomIcon,
                      //     color: blueColor,
                      //     size: Theme.of(context).textTheme.headline4!.fontSize,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            )
          ],
          body: TabBarView(
            children: [
              NewsPage(),
              Text(
                'text',
              ),
              Text(
                'text',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
