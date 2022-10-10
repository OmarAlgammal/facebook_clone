import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';

///TODO: change this class to StatelessWidget
class PublishingPage extends StatefulWidget {
  const PublishingPage({Key? key}) : super(key: key);

  @override
  State<PublishingPage> createState() => _PublishingPageState();
}

class _PublishingPageState extends State<PublishingPage> {
  List<String> publicationScope = ['Public', 'Friends', 'Just me'];

  String publicationScopeSelected = 'Public';

  List<IconModel> publishingIcons = [
    IconModel(icon: imageIcon, iconColor: greenColor, onPressed: () {}),
    IconModel(icon: mentionIcon, iconColor: blueColor, onPressed: () {}),
    IconModel(icon: smileIcon, iconColor: yellowColor, onPressed: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: size16,
        automaticallyImplyLeading: true,
        title: Text(
          'Create a post',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        iconTheme: IconThemeData(
          color: blueColor,
        ),
        actions: [
          TextButton(
              onPressed: () {
                ///TODO: complete publishing action
              },
              child: Text('Publishing')),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            expandGap1(
              color: brightGrayColor,
            ),
            gap24,
            Padding(
              padding: paddingH16,
              child: Row(
                children: [
                  ImageWithBadge(),
                  gap12,
                  Column(
                    children: [
                      Text(
                        'Omar Algammal',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: circular12,
                          ),
                          child: DropdownButton<String>(
                            elevation: size2.toInt(),
                            value: publicationScopeSelected,
                            onChanged: (String? selected) {
                              setState(() {
                                publicationScopeSelected =
                                    selected ?? publicationScopeSelected;
                              });
                            },
                            items: publicationScope
                                .map(
                                  (e) => DropdownMenuItem(
                                    value: e,
                                    child: Text(e),
                                  ),
                                )
                                .toList(),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            gap12,
            expandGap2(color: brightGrayColor),
            SizedBox.fromSize(
              size: Size.fromHeight(size48),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: paddingH16,
                shrinkWrap: true,
                itemCount: publishingIcons.length,
                itemBuilder: (context, index) => IconButton(
                  onPressed: publishingIcons[index].onPressed,
                  icon: Icon(publishingIcons[index].icon),
                  color: publishingIcons[index].iconColor,
                ),
              ),
            ),
            expandGap2(color: brightGrayColor),
            CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverFillRemaining(
                  child: Column(
                    children: [
                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => Image.network(
                            'https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=80'),
                        separatorBuilder: (context, index) => gap12,
                        itemCount: 3,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class IconModel {
  final IconData icon;
  final Color iconColor;
  final VoidCallback onPressed;

  IconModel(
      {required this.icon, required this.iconColor, required this.onPressed});
}
