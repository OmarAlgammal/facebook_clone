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
    IconModel(icon: imageIcon, iconColor: greenColor, onPressed: () {
      ///TODO: open mobile gallery
    }),
    IconModel(icon: locationIcon, iconColor: redColor, onPressed: () {
      /// TODO: add location
    }),
    IconModel(icon: smileIcon, iconColor: yellowColor, onPressed: () {
      /// TODO: add feeling
    }),
  ];

  List<String> postImages = [
    'https://i.natgeofe.com/k/3a6c9b0e-f5db-41b2-a077-5c26bad60b5c/turkey-instanbul-cityscape.jpg?w=636&h=358',
    'https://images.lbc.co.uk/images/308953?crop=16_9&width=660&relax=1&signature=NWoy-Ofslg3S2h1X1gVo2oIMROc=',
    'https://ucarecdn.com/1be25850-3052-4526-a02c-5c17a2ab77c9/',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            expandGap1(
              color: brightGreyColor,
            ),
            gap24,
            Padding(
              padding: paddingH16,
              child: Row(
                children: [
                  ImageWithBadge(),
                  gap12,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Wrap(
                        children: [
                          Text(
                            'Omar Algammal',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          gap4,
                          Text(
                            ' - Feel happy',
                            style: Theme.of(context).textTheme.titleMedium,
                          )
                        ],
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
            expandGap2(color: brightGreyColor),
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
            expandGap2(color: brightGreyColor),
            gap12,
            Padding(
              padding: paddingH8,
              child: TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'What are you thinking about ?',
                  border: InputBorder.none,
                ),
                maxLines: null,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: blackColor,
                    ),
              ),
            ),
            gap12,

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
