import 'package:flutter/material.dart';
import 'package:listening_book/data/home_data.dart';

import 'latested_item.dart';
import 'my_title.dart';

class Latested extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTitle(
          text: 'Latested',
        ),
        SizedBox(height: 20,),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: latestedList.length,
          itemBuilder: (context, index) => LatestedItem(
            item: latestedList[index],
          ),
        )
      ],
    );
  }
}
