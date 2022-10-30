import 'package:facebook_clone/presentation/components/image_with_badge.dart';
import 'package:facebook_clone/presentation/components/rounded_button.dart';
import 'package:facebook_clone/presentation/components/writing_box.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:facebook_clone/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductPage extends StatelessWidget {
  ProductPage({Key? key}) : super(key: key);

  final productImages = [
    'https://assets.architecturaldigest.in/photos/60083e76274aca243711c3a4/4:3/w_1024,h_768,c_limit/ghaziabad-uttar-pradesh-homes-photos-1366x768.jpg',
    'https://i.pinimg.com/originals/66/d9/f5/66d9f5afdc5337d3f9eac362b970c426.jpg',
    'https://i.pinimg.com/originals/66/d9/f5/66d9f5afdc5337d3f9eac362b970c426.jpg',
  ];

  final productImagesController =
      PageController(keepPage: true, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        iconTheme: IconThemeData(
          color: whiteColor,
        ),
        automaticallyImplyLeading: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              moreIcon,
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: (MediaQuery.of(context).size.height / 2) * .9,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: productImagesController,
                    itemCount: productImages.length,
                    itemBuilder: (context, index) {
                      return ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(
                            size24,
                          ),
                          bottomLeft: Radius.circular(
                            size24,
                          ),
                        ),
                        child: InkWell(
                          onTap: (){
                            /// TODO: show product image in separated screen
                          },
                          child: Image.network(
                            productImages[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                gap12,
                SmoothPageIndicator(
                  controller: productImagesController,
                  count: productImages.length,
                  effect: WormEffect(
                      dotHeight: size4,
                      dotWidth: size24,
                      dotColor: brightGreyColor,
                      activeDotColor: blueColor,
                      type: WormType.normal
                      // strokeWidth: 5,
                      ),
                ),
                Padding(
                  padding: paddingH16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gap12,
                      ListTile(
                        contentPadding: padding0,
                        minLeadingWidth: size0,
                        leading: Icon(
                          locationIcon,
                          size: size18,
                          color: blueColor,
                        ),
                        title: RichText(
                          text: TextSpan(
                              text: 'Cairo ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: blueColor,
                                  ),
                              children: [
                                TextSpan(
                                    text: '. ',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                          color: greyColor,
                                          fontWeight: FontWeight.bold,
                                        )),
                                TextSpan(
                                  text: 'A week ago',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        color: greyColor,
                                      ),
                                )
                              ]),
                        ),
                      ),
                      gap8,
                      /// TODO: edit product title
                      Text(
                        'We build personalized homes to fiWe build personalized homes',
                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      gap12,
                      Text(
                        'New condition.'
                        'Sizes S, M, L.'
                        'Delivery with cash on delivery cost \$5.'
                        'Worldwide shipping .',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      gap24,
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              '\$ 56.5',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: blueColor,
                                  ),
                            ),
                          ),
                          SizedBox(
                              width: (MediaQuery.of(context).size.width) / 4,
                              child: RoundedButton(
                                text: 'Save',
                                leadingIcon: bookmarkOutLinedIcon,
                                onPressed: () {},
                              )),
                          gap12,
                          SizedBox(
                              width: (MediaQuery.of(context).size.width) / 4,
                              child: RoundedButton(
                                text: 'Share',
                                leadingIcon: shareOutlinedIcon,
                                onPressed: () {},
                              )),
                        ],
                      ),
                      gap24,
                      expandGap1(color: brightGreyColor,),
                      gap8,
                      Text(
                        'Seller',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: blackColor,
                            ),
                      ),
                      gap8,
                      Row(children: [
                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, AppRoutes.sellerPage);
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ImageWithBadge(
                                showOnlineState: false,
                              ),
                              gap12,
                              Text(
                                'Omar Algammal',
                                style: Theme.of(context).textTheme.bodyLarge,
                              ),
                            ],
                          ),
                        ),
                        RoundedButton(
                          text: 'Follow',
                          onPressed: () {},
                          fillColor: brightGreyColor,
                          textColor: blackColor,
                          width: MediaQuery.of(context).size.width / 5,
                        ),
                      ])
                    ],
                  ),
                ),
                gap24,
                Spacer(),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(size12),
                        bottomLeft: Radius.circular(size12)),
                    color: whiteColor,
                    boxShadow: [
                      BoxShadow(
                        color: brightGreyColor,
                        spreadRadius: size2,
                        blurRadius: size2,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: padding16,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: size16,
                              width: size16,
                              child: messengerActiveIcon,
                            ),
                            gap8,
                            Text(
                              'Send seller a message',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: greyColor,
                                  ),
                            ),
                          ],
                        ),
                        gap12,
                        Row(
                          children: [
                            Expanded(
                              child: WritingBox(
                                hint: 'Hi Emmy is this still available ?',
                                filled: true,
                                enabled: true,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      color: blackColor,
                                    ),
                              ),
                            ),
                            gap12,
                            SizedBox(
                                width: (MediaQuery.of(context).size.width) / 5,
                                child: RoundedButton(
                                  text: 'Send',
                                  onPressed: () {},
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
