import 'package:facebook_clone/presentation/modules/all_groups_page.dart';
import 'package:facebook_clone/presentation/modules/bottom_nav_page.dart';
import 'package:facebook_clone/presentation/modules/friends_page.dart';
import 'package:facebook_clone/presentation/modules/gallery_page.dart';
import 'package:facebook_clone/presentation/modules/group_page.dart';
import 'package:facebook_clone/presentation/modules/home_page.dart';
import 'package:facebook_clone/presentation/modules/landing_page/landing_page.dart';
import 'package:facebook_clone/presentation/modules/news_page.dart';
import 'package:facebook_clone/presentation/modules/productPage.dart';
import 'package:facebook_clone/presentation/modules/profile_page.dart';
import 'package:facebook_clone/presentation/modules/publishing_page.dart';
import 'package:facebook_clone/presentation/modules/registration/create_account_app/create_account_page.dart';
import 'package:facebook_clone/presentation/modules/registration/login_app/login_page.dart';
import 'package:facebook_clone/presentation/modules/saved_elements.dart';
import 'package:facebook_clone/presentation/modules/see_all_products_page.dart';
import 'package:facebook_clone/presentation/modules/seller_page.dart';
import 'package:facebook_clone/presentation/modules/watch_page.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/cupertino.dart';

import '../presentation/modules//chat_page.dart';

Map<String, Widget> routes = {

  AppRoutes.landingPage: const LandingPage(),

  AppRoutes.loginPage: const LoginPage(),
  AppRoutes.createAccountPage: const CreateAccountPage(),
  AppRoutes.bottomNavPage: const BottomNavPage(),

  AppRoutes.homePage: const HomePage(),
  AppRoutes.newsPage: const NewsPage(),
  AppRoutes.watchPage: const WatchPage(),

  AppRoutes.chatPage: const ChatPage(),

  AppRoutes.publishingPage: const PublishingPage(),

  AppRoutes.profilePage: ProfilePage(),

  AppRoutes.friendsPage: FriendsPage(),
  AppRoutes.savedElementsPage: SavedElements(),

  AppRoutes.allGroupsPage: const AllGroupsPage(),
  AppRoutes.groupPage: GroupPage(),

  AppRoutes.productPage: ProductPage(),
  AppRoutes.sellerPage: SellerPage(),
  AppRoutes.seeAllProductPage: SeeAllProductsPage(),

  AppRoutes.galleryPage: GalleryPage(),

};

Route onGenerate(RouteSettings settings) {
  return CupertinoPageRoute(
    settings: settings,
    builder: (context) => routes[settings.name]?? const HomePage(),
  );
}
