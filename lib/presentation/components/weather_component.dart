import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:facebook_clone/presentation/constance/icons.dart';
import 'package:flutter/material.dart';

class WeatherComponent extends StatelessWidget {
  const WeatherComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      child: Padding(
        padding: padding16,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Text('17:56, Cairo, Egypt',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: grayColor,
                  ),),
                ),
                SizedBox.square(
                  dimension: size24,
                  child: IconButton(
                    padding: padding0,
                    onPressed: (){},
                    icon: Icon(
                      reloadIcon,
                    ),
                    color: grayColor,
                    iconSize: size24,
                  ),
                )
              ],
            ),
            gap4,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(
                    sunnyIcon,
                  ),
                  color: orangeColor,
                  iconSize: size56,
                ),
                Text('+20°', style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: blackColor,
                  fontWeight: FontWeight.w500,
                ),),
                Column(
                mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sunny',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: blackColor,
                        ),
                        children: [
                          TextSpan(
                            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: grayColor,
                            ),
                            text: 'Fells Like ',
                          ),
                          TextSpan(
                            text: '+24°',
                          )
                        ]
                      ),
                    )
                  ],
                )

              ],
            ),
            gap8,
            expandGap1(
              color: brightGrayColor,
            ),
            gap12,
            SizedBox(
              height: size64,
              child: ListView.separated(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                separatorBuilder: (context, index){
                  return gap36;
                },
                itemBuilder: (context, index){
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '18:00',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: grayColor,
                        ),
                      ),
                      SizedBox.fromSize(
                        size: Size.square(size18),
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                            sunnyIcon,
                          ),
                          padding: padding0,
                          color: orangeColor,
                          iconSize: size18,
                        ),
                      ),
                      Text(
                        '+24°',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: blackColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: circular12,
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: brightGrayColor,
            spreadRadius: size1,
            blurRadius: size1,
          )
        ]
      ),
    );
  }
}
