import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/modules/uploads_photos_page.dart';
import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  GalleryPage({Key? key}) : super(key: key);
  final List<String> photos = [
    'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
    'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
    'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg',
    'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
    'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg',
    'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
    'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
    'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg','https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
    'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
    'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg',
    'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
    'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg',
    'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
    'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
    'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg','https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg','https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
    'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
    'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg',
    'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
    'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg',
    'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg',
    'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75',
    'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580',
    'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScroller) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            title: Text(
              'Photos',
              style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                color: blueColor,
              ),
            ),
            iconTheme: IconThemeData(
              color: blueColor,
            ),
            automaticallyImplyLeading: true,
            actions: [
              IconButton(
                icon: Icon(
                  addCircleIcon,
                  color: blueColor,
                ),
                onPressed: (){
                  ///TODO: complete add photo
                },
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(size51,),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  isScrollable: true,
                  mouseCursor: MouseCursor.defer,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorWeight: size3,
                  indicatorPadding: EdgeInsets.only(
                    right: 16,
                  ),
                  labelPadding: EdgeInsets.only(
                    right: 16,
                  ),
                  labelColor: blackColor,
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
                      text: 'Uploads',
                    ),
                    Tab(
                      text: 'Albums',
                    ),
                    Tab(
                      text: 'Photos of you',
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
        body: TabBarView(
          children: [
            UploadsPhotosPage(photos: photos),
            Text(''),
            Text(''),
          ],
        ),
      ),
    );
  }
}
