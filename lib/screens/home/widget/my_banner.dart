import 'package:flutter/material.dart';
import 'package:listening_book/data/home_data.dart';

class MyBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 240,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannerList.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(left: 20),
          width: 340,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(bannerList[index]),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
