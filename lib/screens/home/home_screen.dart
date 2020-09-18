import 'package:flutter/material.dart';
import 'package:listening_book/constants.dart';

import 'widget/course.dart';
import 'widget/featured.dart';
import 'widget/latested.dart';
import 'widget/my_banner.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyBanner(),
            Featured(),
            Latested(),
            CourseWidget(),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Home',
        style: TextStyle(
          color: mTitleTextColor,
        ),
      ),
      centerTitle: false,
      actions: [
        IconButton(
          icon: Image.asset('assets/images/avatar.png'),
          onPressed: () {},
        )
      ],
    );
  }
}

