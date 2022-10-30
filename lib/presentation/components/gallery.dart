
import 'package:facebook_clone/presentation/components/rounded_image_with_description.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Gallery extends StatelessWidget {
  Gallery({Key? key, this.count = 9, required this.categories})
      : super(key: key);


  final int? count;
  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return AlignedGridView.count(
      shrinkWrap: true,
      crossAxisCount: 3,
      crossAxisSpacing: 4,
      itemCount: count ?? categories.length,
      padding: padding0,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Center(
          child: SizedBox(
          height: 120,
          child: Image.network(categories[index].imageUrl, fit: BoxFit.fill),
        ),
        );
      },
    );
  }
}
