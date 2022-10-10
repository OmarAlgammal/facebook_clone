import 'package:facebook_clone/presentation/screens/all_groups_page.dart';
import 'package:facebook_clone/presentation/screens/bottom_nav_page.dart';
import 'package:facebook_clone/presentation/screens/friends_page.dart';
import 'package:facebook_clone/presentation/screens/gallery_page.dart';
import 'package:facebook_clone/presentation/screens/group_page.dart';
import 'package:facebook_clone/presentation/screens/home_page.dart';
import 'package:facebook_clone/presentation/screens/news_page.dart';
import 'package:facebook_clone/presentation/screens/productPage.dart';
import 'package:facebook_clone/presentation/screens/profile_page.dart';
import 'package:facebook_clone/presentation/screens/publishing_page.dart';
import 'package:facebook_clone/presentation/screens/saved_elements.dart';
import 'package:facebook_clone/presentation/screens/see_all_products_page.dart';
import 'package:facebook_clone/presentation/screens/seller_page.dart';
import 'package:facebook_clone/presentation/screens/watch_page.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget> routes = {

  AppRoutes.bottomNavPage: const BottomNavPage(),

  AppRoutes.homePage: const HomePage(),
  AppRoutes.newsPage: const NewsPage(),
  AppRoutes.watchPage: const WatchPage(),

  AppRoutes.publishingPage: const PublishingPage(),

  AppRoutes.profilePage: const ProfilePage(),

  AppRoutes.friendsPage: FriendsPage(),
  AppRoutes.savedElementsPage: SavedElements(),

  AppRoutes.allGroupsPage: const AllGroupsPage(),
  AppRoutes.groupPage: const GroupPage(),

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
