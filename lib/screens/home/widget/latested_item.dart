import 'package:flutter/material.dart';
import 'package:listening_book/constants.dart';
import 'package:listening_book/model/listening_book.dart';

import 'free_tag.dart';

class LatestedItem extends StatelessWidget {
  final ListeningBook item;

  const LatestedItem({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            width: 76,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(item.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 16,
                    color: mTitleTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  item.bookIntro,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13,
                    color: mBodyTextColor,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.time,
                      style: TextStyle(
                        color: mSubTextColor,
                        fontSize: 12,
                      ),
                    ),
                    item.newPrice == 0.0
                        ? FreeTag()
                        : Text(
                            '\$${item.newPrice}',
                            style: TextStyle(
                              color: mTitleTextColor,
                              fontSize: 12,
                            ),
                          ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
