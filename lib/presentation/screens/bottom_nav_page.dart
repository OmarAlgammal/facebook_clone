
import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/screens/category_page.dart';
import 'package:facebook_clone/presentation/screens/chat_page.dart';
import 'package:facebook_clone/presentation/screens/home_page.dart';
import 'package:facebook_clone/presentation/screens/notificatoins_page.dart';
import 'package:facebook_clone/presentation/screens/profile_page.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({Key? key}) : super(key: key);

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int index = 3;

  @override
  Widget build(BuildContext context) {
    debugPrint('width is ${MediaQuery.of(context).size.width} height is ${MediaQuery.of(context).size.height}');

    return Scaffold(
      body: IndexedStack(
        index: index,
        children: const [
          HomePage(),
          CategoryScreen(),
          ChatPage(),
          NotificationsPage(),
          ProfilePage(),

        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        type: BottomNavigationBarType.fixed,
        fixedColor: blueColor,
        backgroundColor: whiteColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: size12,

        onTap: (navIndex){
          setState(() {
            index = navIndex;
          });
        },
        selectedIconTheme: IconThemeData(
          color: blueColor,
        ),
        unselectedIconTheme: IconThemeData(
          color: brightGrayColor,
        ),
        items: [
          BottomNavigationBarItem(
        label: 'home',
            activeIcon: homeActiveIcon,
            icon: homeIcon
          ),
          BottomNavigationBarItem(
            label: 'home',
            activeIcon: categoryActiveIcon,
            icon: categoryIcon,
          ),
          BottomNavigationBarItem(
            label: 'messenger',
            activeIcon: messengerActiveIcon,
            icon: messengerIcon,
          ),
          BottomNavigationBarItem(
            label: 'notification',
            activeIcon: notificationActiveIcon,
            icon: notificationIcon,
          ),
          BottomNavigationBarItem(
            label: 'profile',
            icon: ImageWithBadge(imageRadius: size28, imageUrl: '', showOnlineState: false, )
          ),
        ],
      ),
    );
  }
}
