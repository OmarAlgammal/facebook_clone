import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'rounded_image_with_description.dart';

class GalleryWithDescription extends StatelessWidget {
  const GalleryWithDescription({Key? key, required this.categoryModels, this.count = 9}) : super(key: key);

  final List<CategoryModel> categoryModels;
  final int count;

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 4,
      itemCount: count ?? categoryModels.length,
      padding: padding0,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Center(
          child: SizedBox(
          height: 142,
          child: RoundedImageWithDescription(
            text1: categoryModels[index].text1,
            imageUrl: categoryModels[index].imageUrl,
            centerText1: true,
            onPressed: (){},
          ),
        ),
        );
      },
    );
  }
}
