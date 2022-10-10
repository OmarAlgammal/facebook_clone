import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/components/small_gallery.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/updated_component/posts_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:readmore/readmore.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: whiteColor, shadows: [
          Shadow(
            color: blackColor,
            blurRadius: size2,
          )
        ]),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        title: WritingBox(
          hint: 'Search in group',
          enabled: true,
          filled: true,
          withOpacity: true,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_outlined,
              size: size24,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: padding0,
        child: Column(
          children: [
            SizedBox.fromSize(
              size: Size.fromHeight(MediaQuery.of(context).size.height / 2),
              child: Image.network(
                'https://images.pexels.com/photos/337901/pexels-photo-337901.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                fit: BoxFit.fill,
              ),
            ),
            gap16,
            Padding(
              padding: paddingH16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Best place to travel',
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: blackColor,
                        ),
                  ),
                  gap8,
                  ReadMoreText(
                    "With a world full of fascinating destinations, choosing the perfect vacation spot can present a challenge."
                    " That's why U.S. News used expert opinions, reader votes and current trends – and evaluated sights, cultures,"
                    " scenic beauty, food options and more – to compile this list of the world's best places to visit.",
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimExpandedText: 'See more',
                    trimCollapsedText: 'Show less',
                    style: Theme.of(context).textTheme.bodyMedium,
                    colorClickableText: blueColor,
                    textAlign: TextAlign.center,
                  ),
                  gap24,
                  RoundedButton(
                    text: 'Join group',
                    onPressed: () {},
                  ),
                  gap24,
                  expandGap2(
                    color: brightGrayColor,
                  ),
                  Padding(
                    padding: paddingH16,
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(
                            peopleIcon,
                            color: grayColor,
                            size: size24,
                          ),
                          contentPadding: padding0,
                          trailing: SizedBox(
                            width: 80,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  right: 0,
                                  child: ImageWithBadge(
                                    imageUrl: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
                                    showOnlineState: false,
                                    imageRadius: size12,
                                  ),
                                ),
                                Positioned(
                                  right: size18,
                                  child: ImageWithBadge(
                                    imageUrl: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
                                    showOnlineState: false,
                                    imageRadius: size12,
                                    showWhiteCircle: true,
                                  ),
                                ),
                                Positioned(
                                  right: size40,
                                  child: ImageWithBadge(
                                    imageUrl: 'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80',
                                    showOnlineState: false,
                                    imageRadius: size12,
                                    showWhiteCircle: true,
                                  ),
                                ),

                              ],
                            ),
                          ),
                          title: Text(
                            '255.3K members . 37 friends',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: grayColor,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(
                            postIcon,
                            color: grayColor,
                            size: size24,
                          ),
                          contentPadding: padding0,
                          title: Text(
                            '1483 posts . 17 new today',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: grayColor,
                                ),
                          ),
                        ),
                        ListTile(
                          contentPadding: padding0,
                          leading: Icon(
                            globeIcon,
                            color: grayColor,
                            size: size24,
                          ),
                          title: Text(
                            'www.bestravel.com',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: blueColor,
                                ),
                          ),
                        ),
                        ListTile(
                          contentPadding: padding0,
                          leading: Icon(
                            exclamationMarkIcon,
                            color: blueColor,
                            size: size24,
                          ),
                          title: Text(
                            'See more info',
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: blueColor,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  gap8,
                ],
              ),
            ),
            expandGap12(
              color: brightGrayColor,
            ),
            Padding(
              padding: paddingH16,
              child: Column(
                children: [
                  gap12,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text.rich(TextSpan(
                            text: 'Photos  ',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text: '879',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: grayColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                              )
                            ])),
                      ),
                      SizedBox(
                        height: size24,
                        width: size24,
                        child: IconButton(
                          onPressed: () {
                            ///TODO: complete this action
                          },
                          padding: padding0,
                          icon: Icon(
                            rightArrowIcon,
                            color: grayColor,
                            size: size24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  gap12,
                  SmallGallery(
                    count: 9,
                    onPressed: () {
                      ///TODO: complete this action
                    },
                  ),
                  gap24,
                ],
              ),
            ),
            expandGap12(color: brightGrayColor),
            PostsList(),
          ],
        ),
      ),
    );
  }
}
