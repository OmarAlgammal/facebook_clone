import 'package:facebook_clone/presentation/components/profile_state.dart';
import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/components/small_gallery.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/updated_component/posts_list.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  final double profileImageSize = size64;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
          ),
          actions: [
            IconButton(
              onPressed: () {
                /// TODO: complete action here
              },
              icon: Icon(
                burgerIcon,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: ((MediaQuery.of(context).size.height / 4) * 1.5) +
                    profileImageSize,
                child: Stack(
                  children: [
                    Image.network(
                      'https://images.pexels.com/photos/337901/pexels-photo-337901.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      height: (MediaQuery.of(context).size.height / 4) * 1.5,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ProfileState(
                        imageUrl:
                            'https://images.pexels.com/photos/35537/child-children-girl-happy.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                        thereIsNewState: false,
                        radius: profileImageSize,
                        showAddIcon: true,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: paddingH16,
                child: Column(
                  children: [
                    gap16,
                    Text(
                      'Omar Algmmal',
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    gap8,
                    Text(
                      'Junior Flutter Developer',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: blackColor,
                          ),
                    ),
                    gap16,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '43',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Friends',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: grayColor,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '43',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Followers',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: grayColor,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '43',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              'Following',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: grayColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    gap24,
                    expandGap1(color: brightGrayColor),
                    gap24,
                    ListTile(
                      contentPadding: padding0,
                      leading: SvgPicture.asset(
                        homeSvgIcon,
                        color: grayColor,
                        height: size24,
                        width: size24,
                      ),
                      title: RichText(
                        text: TextSpan(
                            text: 'Lives in ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: grayColor,
                                ),
                            children: [
                              TextSpan(
                                  text: 'Cairo, Egypt',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: blueColor,
                                      ))
                            ]),
                      ),
                    ),
                    ListTile(
                      contentPadding: padding0,
                      leading: Icon(
                        locationIcon,
                        color: grayColor,
                        size: size24,
                      ),
                      title: RichText(
                        text: TextSpan(
                            text: 'From ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: grayColor,
                                ),
                            children: [
                              TextSpan(
                                  text: 'Alexandria, Egypt',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: blueColor,
                                      ))
                            ]),
                      ),
                    ),
                    ListTile(
                      contentPadding: padding0,
                      leading: Icon(
                        birthdayIcon,
                        color: grayColor,
                        size: size24,
                      ),
                      title: Text(
                        'Birthday, December 15',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: grayColor,
                            ),
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        ///TODO: complete see more information
                      },
                      leading: Icon(
                        exclamationMarkIcon,
                        color: blueColor,
                        size: size24,
                      ),
                      contentPadding: padding0,
                      title: Text(
                        'See more info',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: blueColor,
                            ),
                      ),
                    ),
                    gap12,
                    expandGap1(color: brightGrayColor),
                    gap12,
                    RoundedButton(
                      text: 'Edit Profile',
                      fillColor: brightGrayColor,
                      textColor: blueColor,
                      onPressed: () {
                        ///EDIT: complete edit profile action
                      },
                    ),
                    gap12,
                  ],
                ),
              ),
              expandGap12(color: brightGrayColor),
              gap12,
              Padding(
                padding: paddingH16,
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.galleryPage);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text.rich(TextSpan(
                                text: 'Photos  ',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                        color: blackColor,
                                        fontWeight: FontWeight.bold),
                                children: [
                                  TextSpan(
                                    text: '879',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          color: grayColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ])),
                          ),
                          SizedBox(
                            height: size24,
                            width: size24,
                            child: IconButton(
                              onPressed: () {
                                ///TODO: complete this action
                              },
                              padding: padding0,
                              icon: Icon(
                                rightArrowIcon,
                                color: grayColor,
                                size: size24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    gap12,
                    SmallGallery(
                      onPressed: () {
                        ///TODO: complete this action
                      },
                    ),
                  ],
                ),
              ),
              expandGap12(
                color: brightGrayColor,
              ),
              PostsList(),
            ],
          ),
        ),
      ),
    );
  }
}
