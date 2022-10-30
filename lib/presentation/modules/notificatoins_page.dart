import 'package:facebook_clone/presentation/components/chat_item.dart';
import 'package:facebook_clone/presentation/components/post_notification.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/reactions_type.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBox) => [
          SliverAppBar(
            centerTitle: true,
            toolbarHeight: 210,
            floating: true,
            pinned: true,
            title: Column(
              children: [
                Text('Notifications',
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: blueColor,
                      fontWeight: FontWeight.bold,
                    )),
                gap24,
                Padding(
                  padding: paddingH16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ChatItem(
                        showOnlineState: false,
                        badgeColor: redColor,
                        title: 'Friend Requests',
                        description: 'Ahmad and 136 other people',
                        badgeNum: 123,
                        imageRadius: size28,
                      ),
                      gap16,
                      ChatItem(
                        showOnlineState: false,
                        badgeColor: redColor,
                        title: 'Invitaions to a group',
                        badgeNum: 10000,
                        imageRadius: size28,
                      ),
                    ],
                  ),
                ),
                gap12,
                expandGap2(
                  color: brightGreyColor,
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(51,),
              child: Align(
                alignment: Alignment.centerLeft,
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
                  padding: paddingH16,
                  tabs: [
                    Tab(
                      child: Text('All'),
                      height: size48,
                    ),Tab(
                      child: Text('Likes'),
                      height: size48,
                    ),Tab(
                      child: Text('Comments'),
                      height: size48,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gap12,
            expandGap8(color: brightGreyColor,),
            gap12,
            Padding(
              padding: paddingH16,
              child: Text('New',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: greyColor,
                ),),
            ),
            gap16,
            Expanded(
              child: Padding(
                padding: paddingH16,
                child: TabBarView(
                  children: [
                    ListView.separated(
                      padding: padding0,
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => PostNotification(
                        userProfileImageUrl:
                        'https://images.pexels.com/photos/189857/pexels-photo-189857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        userName: 'Alaa Hamed',
                        reactionType: ReactionsType.like,
                      ),
                      separatorBuilder: (context, index) => gap12,
                    ),ListView.separated(
                      padding: padding0,
                      itemCount: 10,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => PostNotification(
                        userProfileImageUrl:
                        'https://images.pexels.com/photos/189857/pexels-photo-189857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        userName: 'Alaa Hamed',
                        reactionType: ReactionsType.laughing,
                      ),
                      separatorBuilder: (context, index) => gap12,
                    ),ListView.separated(
                      padding: padding0,
                      itemCount: 10,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) => PostNotification(
                        userProfileImageUrl:
                        'https://images.pexels.com/photos/189857/pexels-photo-189857.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        userName: 'Alaa Hamed',
                        reactionType: ReactionsType.love,
                      ),
                      separatorBuilder: (context, index) => gap12,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
