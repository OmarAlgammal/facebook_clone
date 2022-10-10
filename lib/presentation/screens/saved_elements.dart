import 'package:facebook_clone/presentation/components/saved_element_item.dart';
import 'package:facebook_clone/presentation/constance/colors.dart';
import 'package:facebook_clone/presentation/constance/dimens.dart';
import 'package:flutter/material.dart';

class SavedElements extends StatelessWidget {
  SavedElements({Key? key}) : super(key: key);

  final List savedElements = [
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best oneWow look at this car , it\'s the best oneWow look at this car , it\'s the best one',
      'postType': 'reelz',
      'savedDate': '23m',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best one Wow look at this car , it\'s the best oneWow look at this car , it\'s the best one',
      'postType': 'Video',
      'savedDate': '23m',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best one',
      'postType': 'reelz',
      'savedDate': '23m',
    },
    {
      'imageUrl':
      'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best oneWow look at this car , it\'s the best oneWow look at this car , it\'s the best one',
      'postType': 'reelz',
      'savedDate': '23m',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best one',
      'postType': 'post',
      'savedDate': '23m',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2FyfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best one',
      'postType': 'reelz',
      'savedDate': '23m',
    },
    {
      'imageUrl':
      'https://images.unsplash.com/photo-1568605117036-5fe5e7bab0b7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80',
      'videoTitle': 'Wow look at this car , it\'s the best oneWow look at this car , it\'s the best oneWow look at this car , it\'s the best one',
      'postType': 'reelz',
      'savedDate': '23m',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Saved Items',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        iconTheme: IconThemeData(
          color: blueColor,
        ),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: paddingH16,
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            gap12,
            Text(
              'The most recent',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            gap12,
            ListView.separated(
              shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => SavedElementItem(
                    postDescription: savedElements[index]['videoTitle'],
                  postImageUrl: savedElements[index]['imageUrl'],
                  postType: savedElements[index]['postType'],
                  savedFrom: savedElements[index]['savedDate'],
                ),
                separatorBuilder: (context, index) => gap16,
                itemCount: savedElements.length)
          ],
        ),
      ),
    );
  }
}
