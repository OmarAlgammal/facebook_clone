import 'package:facebook_clone/presentation/components/profile_state.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    ///TODO: Determine widget height from context
    return Padding(
      padding: const EdgeInsets.only(top: size8),
      child: SizedBox(
        height: 90,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          children: [
            gap16,
            ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                if (index == 0)  return ProfileState(
                  imageUrl:
                  'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                  thereIsNewState: false,
                  showAddIcon: true,
                );
                //TODO: add image url
                return const ProfileState(imageUrl: '', thereIsNewState: true, showAddIcon: false,);
              },
              separatorBuilder: (context, index) => gap4,
            ),
          ],
        ),
      ),
    );
  }
}
