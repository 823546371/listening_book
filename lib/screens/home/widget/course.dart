import 'package:flutter/material.dart';
import 'package:listening_book/data/home_data.dart';

import 'course_item.dart';
import 'my_title.dart';

class CourseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTitle(
          text: 'Course',
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: courseList.length,
          itemBuilder: (context, index) => CourseItem(
            item: courseList[index],
          ),
        )
      ],
    );
  }
}
