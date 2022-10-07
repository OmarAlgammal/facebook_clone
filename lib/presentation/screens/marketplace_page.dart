import 'package:facebook_clone/presentation/components/small_gallery.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';

class MarketPlacePage extends StatelessWidget {
  const MarketPlacePage({Key? key, required this.categories}) : super(key: key);

  final List<CategoryModel> categories;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: padding0,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          expandGap12(
            color: brightGrayColor,
          ),
          gap12,
          Padding(
            padding: paddingH16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                gap8,
                SmallGallery(
                  forMarketplace: true,
                  categories: categories,
                  onPressed: (){
                    Navigator.pushNamed(context, AppRoutes.seeAllProductPage);
                  },
                ),
                gap24,
                InkWell(
                  onTap: (){
                    ///TODO: load more categories
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'See more',
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: blueColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        arrowDown,
                        color: blueColor,
                      )
                    ],
                  ),
                ),
                gap12,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
