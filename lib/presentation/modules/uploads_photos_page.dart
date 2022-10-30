import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UploadsPhotosPage extends StatelessWidget {
  const UploadsPhotosPage({Key? key, required this.photos}) : super(key: key);

  final List<String> photos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: padding0,
        children: [
          gap12,
          expandGap12(color: brightGreyColor),
          gap24,
          MasonryGridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: padding0,
              crossAxisCount: 3,
              itemCount: photos.length,
              crossAxisSpacing: size4,
              mainAxisSpacing: size4,
              itemBuilder: (context, index) =>
                  ClipRRect(
                    borderRadius: circular8,
                      child: Image.network(photos[index]))),
        ],
      ),
    );
  }
}
