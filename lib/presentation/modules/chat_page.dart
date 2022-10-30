import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';


class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: blueColor),
          shadowColor: greyColor,
          elevation: 0.1,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                callIcon,
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  videoIcon,
                )),
          ],
          title: Row(
            children: [
              ImageWithBadge(
                imageRadius: size18,
                showOnlineState: true,
              ),
              gap8,
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Taha Mohamed',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text('Online',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: greyColor,
                          ))
                ],
              )
            ],
          ),
        ),
        body: Column(children: [
          gap24,
          Expanded(
            child: Padding(
              padding: paddingH8,
              child: ListView.separated(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) => ((index % 2) == 0)
                    ? Align(
                  alignment: AlignmentDirectional.centerEnd,
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: brightBlueColor,
                            borderRadius: BorderRadiusDirectional.only(
                                topEnd: Radius.circular(size12),
                                topStart: Radius.circular(size12),
                                bottomStart: Radius.circular(size12)),
                          ),
                          child: Padding(
                            padding: padding8,
                            child: Text(
                              'message',
                            ),
                          ),
                        ),
                    )
                    : Align(
                  alignment: AlignmentDirectional.centerStart,
                      child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: brightGreyColor,
                      borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.circular(size12),
                          topStart: Radius.circular(size12),
                          bottomEnd: Radius.circular(size12)),
                      shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding: padding8,
                    child: Text(
                        'message',
                    ),
                  ),
                ),
                    ),
                separatorBuilder: (context, index) => gap12,
                physics: const BouncingScrollPhysics(),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  attachFileIcon,
                ),
              ),
              Expanded(
                child: WritingBox(
                  hint: 'Type a message',
                  enabled: true,
                  filled: true,
                ),
              ),
              IconButton(
                onPressed: () {
                  ///TODO: complete add emoji action
                },
                icon: Icon(
                  smileIcon,
                ),
              ),
              IconButton(
                onPressed: () {
                  ///TODO: complete mic action
                },
                icon: Icon(
                  micIcon,
                ),
              )
            ],
          ),
          gap12,
        ]));
  }
}
