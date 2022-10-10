import 'package:facebook_clone/presentation/assets.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ionicons/ionicons.dart';


///TODO: change search icon
const IconData searchIcon = Ionicons.search_outline;

/// PUBLISHING PAGE
/// TODO: edit mention icon
const IconData mentionIcon = FontAwesomeIcons.personCane;
/// REACTOINS
const String likeSvgIcon = 'assets/icons/reactions/like.svg';
const String loveSvgIcon = 'assets/icons/reactions/love.svg';
const String laughingSvgIcon = 'assets/icons/reactions/laughing.svg';
const String sadSvgIcon = 'assets/icons/reactions/sad.svg';
const String angrySvgIcon = 'assets/icons/reactions/angry.svg';
const String shockedSvgIcon = 'assets/icons/reactions/shocked.svg';

/// BOTTOM NAV PAGE
const String homeSvgIcon = 'assets/icons/home.svg';
const String homeActiveSvgIcon = 'assets/icons/home_active.svg';

/// BOTTOM NAV PAGE
SvgPicture homeIcon = SvgPicture.asset(
  'assets/icons/home.svg',
  color: brightGrayColor,
);
SvgPicture homeActiveIcon = SvgPicture.asset(
  'assets/icons/home_active.svg',
  color: blueColor,
);
SvgPicture categoryIcon = SvgPicture.asset('assets/icons/category.svg');
SvgPicture categoryActiveIcon =
    SvgPicture.asset('assets/icons/category_active.svg');
SvgPicture messengerIcon = SvgPicture.asset('assets/icons/messenger.svg');
SvgPicture messengerActiveIcon =
    SvgPicture.asset('assets/icons/messenger_active.svg');
SvgPicture notificationIcon = SvgPicture.asset('assets/icons/notification.svg');
SvgPicture notificationActiveIcon =
    SvgPicture.asset('assets/icons/notification_active.svg');
SvgPicture gifSvgIcon = SvgPicture.asset('assets/icons/gif.svg');
const IconData gifIcon = OIcons.gif;
const IconData smileIcon = FontAwesomeIcons.faceSmile;

const IconData imageIcon = Ionicons.image_outline;
const IconData addIcon = Ionicons.add;
const IconData videoIcon = Ionicons.videocam;
const IconData moreIcon = Icons.more_vert_outlined;
const IconData shareIcon = FontAwesomeIcons.share;
const IconData shareOutlinedIcon = Ionicons.share_outline;

/// CHAT PAGE
const IconData arrowDownIcon = Icons.keyboard_arrow_down_outlined;
const String searchSvgIcon = 'assets/icons/search.svg';
const String penSvgIcon = 'assets/icons/pen.svg';

/// CATEGORY PAGE
const sunnyIcon = OIcons.sun_outlined;
const healthIcon = OIcons.health;
const friendsIcon = OIcons.friends;
const peopleIcon = OIcons.people;
const marketplaceIcon = OIcons.marketplace;
const memoriesIcon = OIcons.memories;
const reloadIcon = OIcons.reload;
const bookmarkOutLinedIcon = OIcons.bookmark;
const gameIcon = OIcons.game;
const eventIcon = OIcons.event;
const jobIcon = OIcons.job;

/// ALL GROUPS PAGE
const addCircleIcon = Icons.add_circle_outline;
const arrowUpDownIcon = OIcons.arrow_up_down;

/// GROUP PAGE
const postIcon = Icons.post_add_rounded;
const globeIcon = FontAwesomeIcons.globe;
const exclamationMarkIcon = FontAwesomeIcons.circleExclamation;
const rightArrowIcon = Icons.arrow_forward_ios_rounded;

/// PROFILE PAGE
const IconData burgerIcon = FontAwesomeIcons.bars;
const IconData locationIcon = Icons.location_on_outlined;
const IconData birthdayIcon = FontAwesomeIcons.cakeCandles;


/// PRODUCT PAGE

/// MY MARKETPLACE PAGE
const IconData settingsIcon = Icons.settings;

/// SELLER PAGE
const IconData starIcon = Icons.star;
const IconData mailIcon = Icons.mail_outlined;
const IconData arrowDown = Icons.keyboard_arrow_down;