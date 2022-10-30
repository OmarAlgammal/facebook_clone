import 'package:facebook_clone/presentation/components/rounded_image_with_description.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class SeeAllProductsPage extends StatelessWidget {
  SeeAllProductsPage({Key? key}) : super(key: key);

  final List<CategoryModel> categories = [
    CategoryModel(imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75', text1: 'VehiclesVehiclesVehiclesVehicles',),
    CategoryModel(imageUrl: 'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg', text1: 'Home',),
    CategoryModel(imageUrl: 'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580', text1: 'Rentals',),
    CategoryModel(imageUrl: 'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg', text1: 'Electronics',),
    CategoryModel(imageUrl: 'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg', text1: 'Family',),
    CategoryModel(imageUrl: 'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg', text1: 'Clothing',),
    CategoryModel(imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75', text1: 'Vehicles',),
    CategoryModel(imageUrl: 'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg', text1: 'Home',),
    CategoryModel(imageUrl: 'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580', text1: 'Rentals',),
    CategoryModel(imageUrl: 'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg', text1: 'Electronics',),
    CategoryModel(imageUrl: 'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg', text1: 'Family',),
    CategoryModel(imageUrl: 'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg', text1: 'Clothing',),
    CategoryModel(imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75', text1: 'Vehicles',),
    CategoryModel(imageUrl: 'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg', text1: 'Home',),
    CategoryModel(imageUrl: 'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580', text1: 'Rentals',),
    CategoryModel(imageUrl: 'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg', text1: 'Electronics',),
    CategoryModel(imageUrl: 'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg', text1: 'Family',),
    CategoryModel(imageUrl: 'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg', text1: 'Clothing',),
    CategoryModel(imageUrl: 'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580', text1: 'Rentals',),
    CategoryModel(imageUrl: 'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg', text1: 'Electronics',),
    CategoryModel(imageUrl: 'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg', text1: 'Family',),
    CategoryModel(imageUrl: 'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg', text1: 'Clothing',),
    CategoryModel(imageUrl: 'https://imgd.aeplcdn.com/664x374/n/cw/ec/97705/huracan-sto-exterior-right-front-three-quarter-2.jpeg?q=75', text1: 'Vehicles',),
    CategoryModel(imageUrl: 'https://assets.pbimgs.com/pbimgs/rk/images/dp/wcm/202225/0705/banks-extending-dining-table-2-c.jpg', text1: 'Home',),
    CategoryModel(imageUrl: 'https://images.rezfusion.com/evrn/HIKEWE/107962/6478780517.jpg?optimize=true&rotate=true&quality=70&width=580', text1: 'Rentals',),
    CategoryModel(imageUrl: 'https://sparkimg.nl/cdn-cgi/image/w=480,h=320,fit=pad,f=auto/https://static.iphoned.nl/orca/products/18699/apple-iphone-14-pro-max.jpg', text1: 'Electronics',),
    CategoryModel(imageUrl: 'https://www.patoys.in/image/cache/catalog/productsimage/dls-jeep-dls-002-01-1000x1000.jpg', text1: 'Family',),
    CategoryModel(imageUrl: 'https://static-01.daraz.com.bd/p/b866f33dd13ec432195fd3f1c2d96206.jpg', text1: 'Clothing',),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: blueColor,
        ),
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
            color: blueColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ),
        body: MasonryGridView.count(
          itemCount: categories.length,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          crossAxisCount: 2,
          mainAxisSpacing: size4,
          crossAxisSpacing: size4,
          itemBuilder: (context, index) {
            return Column(
              children: [
                RoundedImageWithDescription(imageUrl: categories[index].imageUrl, onPressed: (){
                  ///TODO:
                }, centerText1: true, text1: categories[index].text1,),
                gap12,
              ],
            );
          },
        )

    );
  }
}
