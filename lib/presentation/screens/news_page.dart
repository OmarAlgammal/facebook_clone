
import 'package:facebook_clone/presentation/components/post_design.dart';
import 'package:facebook_clone/presentation/components/status_bar.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        padding: padding0,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              gap8,
              expandGap8(color: brightGrayColor,),
              StatusBar(),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: padding0,
                itemCount: 10,
                itemBuilder: (context, index){
                  return PostDesign();
                },
              )
            ],
          ),
        ]
    );
  }
}
