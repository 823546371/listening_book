import 'package:flutter/material.dart';
import 'package:listening_book/constants.dart';
import 'package:listening_book/model/course.dart';

class CourseItem extends StatelessWidget {
  final Course item;

  const CourseItem({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(item.imageUrl),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              color: mTitleTextColor,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 200,
                height: 8,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(36),
                  child: LinearProgressIndicator(
                    value: item.current / item.total,
                    backgroundColor: Color(0xFFCFCFCF),
                    valueColor: AlwaysStoppedAnimation(mAccentColor),
                  ),
                ),
              ),
              SizedBox(width: 10,),
              Text(
                '${item.current}/${item.total}',
                style: TextStyle(
                  fontSize: 12,
                  color: mSubTextColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
