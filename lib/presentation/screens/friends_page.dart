import 'package:facebook_clone/presentation/components/friend_request_item.dart';
import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FriendsPage extends StatelessWidget {
  FriendsPage({Key? key}) : super(key: key);

  final friends = [
    {
      'userName': 'Ali Hamed',
      'userImageUrl':
          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'mutualFriendsNum': '16',
    },
    {
      'userName': 'Mohamed Hamed',
      'userImageUrl':
          'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      'mutualFriendsNum': '16',
    },
    {
      'userName': 'alaa Hamed',
      'userImageUrl':
          'https://images.unsplash.com/photo-1614436163996-25cee5f54290?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHVzZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      'mutualFriendsNum': '16',
    },
    {
      'userName': 'Omar Hamed',
      'userImageUrl':
          'https://images.unsplash.com/photo-1503551723145-6c040742065b-v2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
      'mutualFriendsNum': '16',
    },
    {
      'userName': 'Ali Hamed',
      'userImageUrl':
          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'mutualFriendsNum': '16',
    },
    {
      'userName': 'Ali Hamed',
      'userImageUrl':
          'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      'mutualFriendsNum': '16',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Friends',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          iconTheme: IconThemeData(
            color: blueColor,
          ),
          automaticallyImplyLeading: true,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(
              searchIcon,
            )),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(size51),
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
                unselectedLabelColor: grayColor,
                unselectedLabelStyle:
                Theme.of(context).textTheme.titleMedium,
                padding: paddingH16,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Suggestions',
                  ),
                  Tab(
                    text: 'Friends',
                  )
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: paddingH16,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                        text: TextSpan(
                            text: 'Friends requests ',
                            style:
                                Theme.of(context).textTheme.bodyLarge!.copyWith(
                                      color: grayColor,
                                    ),
                            children: [
                              TextSpan(
                                  text: '73',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: redColor,
                                      ))
                            ]),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'See all',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ))
                    ],
                  ),
                  gap8,
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) =>
                          FriendRequestItem(imageUrl: friends[index]['userImageUrl'],
                              userName: friends[index]['userName'],
                              mutualFriendsNum: friends[index]['mutualFriendsNum']),
                      separatorBuilder: (context, index) => gap24,
                      itemCount: friends.length),
                ],
              ),
            ),
            Text('thank god'),
            Text('thank god'),
          ],
        ),
      ),
    );
  }
}
