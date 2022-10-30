import 'package:facebook_clone/presentation/components/gallery.dart';
import 'package:facebook_clone/presentation/components/profile_state.dart';
import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
import 'package:facebook_clone/updated_component/posts_list.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  final double profileImageSize = size64;

  final List<CategoryModel> categoryModels = [
    CategoryModel(
      imageUrl:
          'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
      text1: 'Vehicles',
    ),
    CategoryModel(
      imageUrl:
          'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
      text1: 'Home',
    ),
    CategoryModel(
      imageUrl:
          'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
      text1: 'Rentals',
    ),
    CategoryModel(
      imageUrl:
          'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
      text1: 'Electronics',
    ),
    CategoryModel(
      imageUrl:
          'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg',
      text1: 'Family',
    ),
    CategoryModel(
      imageUrl:
          'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg',
      text1: 'Clothing',
    ),
    CategoryModel(
      imageUrl:
          'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
      text1: 'Vehicles',
    ),
    CategoryModel(
      imageUrl:
          'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
      text1: 'Home',
    ),
    CategoryModel(
      imageUrl:
          'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
      text1: 'Rentals',
    ),
    CategoryModel(
      imageUrl:
          'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
      text1: 'Electronics',
    ),
    CategoryModel(
      imageUrl:
          'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg',
      text1: 'Family',
    ),
    CategoryModel(
      imageUrl:
          'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg',
      text1: 'Clothing',
    ),
    CategoryModel(
      imageUrl:
          'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
      text1: 'Vehicles',
    ),
    CategoryModel(
      imageUrl:
          'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
      text1: 'Home',
    ),
    CategoryModel(
      imageUrl:
          'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
      text1: 'Rentals',
    ),
    CategoryModel(
      imageUrl:
          'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
      text1: 'Electronics',
    ),
    CategoryModel(
      imageUrl:
          'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg',
      text1: 'Family',
    ),
    CategoryModel(
      imageUrl:
          'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg',
      text1: 'Clothing',
    ),
  ];

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
                    Positioned(
                      bottom: 0,
                      right: 50,
                      left: 50,
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
                                    color: greyColor,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              '120',
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
                                    color: greyColor,
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
                                    color: greyColor,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    gap24,
                    expandGap1(color: brightGreyColor),
                    gap24,
                    ListTile(
                      contentPadding: padding0,
                      leading: SvgPicture.asset(
                        homeSvgIcon,
                        color: greyColor,
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
                                  color: greyColor,
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
                        color: greyColor,
                        size: size24,
                      ),
                      title: RichText(
                        text: TextSpan(
                            text: 'From ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: greyColor,
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
                        color: greyColor,
                        size: size24,
                      ),
                      title: Text(
                        'Birthday, December 15',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: greyColor,
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
                    expandGap1(color: brightGreyColor),
                    gap12,
                    RoundedButton(
                      text: 'Edit Profile',
                      fillColor: brightGreyColor,
                      textColor: blueColor,
                      onPressed: () {
                        ///EDIT: complete edit profile action
                      },
                    ),
                    gap12,
                  ],
                ),
              ),
              expandGap12(color: brightGreyColor),
              gap12,
              Padding(
                padding: paddingH16,
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
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
                                          color: greyColor,
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
                                color: greyColor,
                                size: size24,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    gap12,
                    Gallery(
                      count: 9,
                      categories: categoryModels,
                    ),
                  ],
                ),
              ),
              expandGap12(
                color: brightGreyColor,
              ),
              PostsList(),
            ],
          ),
        ),
      ),
    );
  }
}
