import 'package:flutter/material.dart';
import 'package:listening_book/data/home_data.dart';

import 'featured_item.dart';
import 'my_title.dart';

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          MyTitle(
            text: 'Featured',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: featuredList.length,
              itemBuilder: (context, index) => FeaturedItem(
                item: featuredList[index],
              ),
            ),
          )
        ],
      ),
    );
  }
}