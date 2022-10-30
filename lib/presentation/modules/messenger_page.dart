import 'package:facebook_clone/presentation/components/chat_item.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MessengerPage extends StatelessWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: paddingH16,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Chats',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: blueColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Icon(
                    arrowDownIcon,
                    color: blueColor,
                    size: size36,
                  )
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: SvgPicture.asset(
                  penSvgIcon,
                  fit: BoxFit.scaleDown,
                ),
              )
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: paddingH16,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              gap16,
              WritingBox(
                filled: true,
                hint: 'Search',
                enabled: true,
                showSuffix: true,
              ),
              gap24,
              ListView.separated(
                itemCount: 10,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: (){
                      ///TODO: send arguments
                      Navigator.pushNamed(context, AppRoutes.chatPage);
                    },
                      child: ChatItem(
                    title: 'Omar Agammal',
                    imageRadius: size36,
                    description: 'where are you now, i\'m here for long time',
                    badgeNum: 33,
                  ));
                },
                separatorBuilder: (context, index) {
                  return gap16;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
