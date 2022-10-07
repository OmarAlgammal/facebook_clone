import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
import 'package:facebook_clone/presentation/screens/marketplace_page.dart';
import 'package:flutter/material.dart';

class SellerPage extends StatelessWidget {
  SellerPage({Key? key}) : super(key: key);

  final List<CategoryModel> categories = [
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
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              floating: true,
              pinned: true,
              automaticallyImplyLeading: false,
              iconTheme: IconThemeData(
                color: blueColor,
              ),
              centerTitle: true,
              toolbarHeight: 340,
              title: Column(
                children: [
                  gap36,
                  Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BackButton(),
                          IconButton(
                            padding: paddingT16,
                            alignment: Alignment.topCenter,
                            onPressed: () {},
                            icon: Icon(
                              settingsIcon,
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: paddingH16,
                        child: Column(
                          children: [
                            ImageWithBadge(
                              imageUrl: '',
                              showOnlineState: false,
                              imageRadius: 140,
                            ),
                            gap24,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'Omar Algammal Omar Algammal',
                                    textAlign: TextAlign.center,
                                    maxLines: 1,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                            gap12,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: size18,
                                  width: MediaQuery.of(context).size.width / 4,
                                  child: ListView.builder(
                                    itemCount: 5,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder: (context, index) => Icon(
                                      starIcon,
                                      color: yellowColor,
                                      size: size18,
                                    ),
                                  ),
                                ),
                                gap8,
                                Text(
                                  '4.8 (53)',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: grayColor,
                                      ),
                                ),
                              ],
                            ),
                            gap12,
                            Row(
                              children: [
                                Expanded(
                                  child: WritingBox(
                                    hint: 'Search marketplace',
                                    showSuffix: true,
                                    filled: true,
                                    enabled: true,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {
                                    ///TODO: complete this action
                                  },
                                  icon: Icon(
                                    addCircleIcon,
                                    color: blueColor,
                                  ),
                                ),
                                Stack(
                                  children: [
                                    SizedBox(
                                      width: size32,
                                      height: size42,
                                      child: IconButton(
                                        padding: padding0,
                                        onPressed: () {
                                          ///TODO: complete this action
                                        },
                                        icon: Icon(
                                          mailIcon,
                                          color: blueColor,
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: redColor,
                                              shape: BoxShape.circle),
                                          child: Padding(
                                            padding: padding4,
                                            child: Text(
                                              '3',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    color: whiteColor,
                                                  ),
                                            ),
                                          )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            gap16,
                            expandGap1(color: brightGrayColor),
                            gap24,
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              bottom: TabBar(
                isScrollable: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: paddingH16,
                indicatorPadding: EdgeInsets.only(
                  right: 16,
                ),
                labelPadding: EdgeInsets.only(
                  right: 16,
                ),
                labelColor: blackColor,
                indicatorWeight: size3,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorColor: blueColor,
                labelStyle: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                unselectedLabelColor: grayColor,
                unselectedLabelStyle: Theme.of(context).textTheme.bodyLarge,
                tabs: [
                  Tab(
                    child: Text('Marketplace'),
                  ),
                  Tab(
                    child: Text('Saved'),
                  ),
                  Tab(
                    child: Text('My Listings'),
                  ),
                ],
              ),
            ),
          ],
          body: TabBarView(
            children: [
              MarketPlacePage(categories: categories),
              Text('data'),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
