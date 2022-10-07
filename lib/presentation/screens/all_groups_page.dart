import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/screens/groups_i_manage.dart';
import 'package:facebook_clone/presentation/screens/my_groups_page.dart';
import 'package:flutter/material.dart';

class AllGroupsPage extends StatelessWidget {
  const AllGroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              title: WritingBox(
                hint: 'Search groups',
                showSuffix: true,
                enabled: true,
                filled: true,
                withOpacity: true,
              ),
              iconTheme: IconThemeData(
                color: blueColor,
              ),
              automaticallyImplyLeading: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    addCircleIcon,
                    color: blueColor,
                    size: size24,
                  ),
                )
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(size72,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    expandGap2(color: brightGrayColor,),
                    gap16,
                    TabBar(
                      padding: EdgeInsets.only(left: 16, bottom: 8,),
                      mouseCursor: MouseCursor.defer,
                      isScrollable: true,
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorPadding: EdgeInsets.only(right: 16,),
                      labelPadding: EdgeInsets.only(right: 16,),
                      indicatorWeight: size3,
                      labelColor: blackColor,
                      labelStyle: Theme.of(context).textTheme.headline5!.copyWith(
                        color: blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: blackColor,
                      ),
                      tabs: [
                        Text(
                          'My groups',
                        ),
                        Text(
                          'Groups i manage',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
          body: TabBarView(
            children: [
              MyGroupsPage(),
              GroupsIManage(),
            ],
          ),
        ),
      ),
    );
  }
}
