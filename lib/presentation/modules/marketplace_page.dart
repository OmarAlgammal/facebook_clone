import 'package:facebook_clone/presentation/components/galleryWithDescription.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
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
            color: brightGreyColor,
          ),
          gap12,
          Padding(
            padding: paddingH16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                gap8,
                GalleryWithDescription(categoryModels: categories),
                gap24,
                InkWell(
                  onTap: () {
                    ///TODO: load more categories
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'See more',
                        style: Theme
                            .of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
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
