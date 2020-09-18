import 'package:flutter/material.dart';
import 'package:listening_book/constants.dart';
import 'package:listening_book/model/listening_book.dart';

import 'free_tag.dart';

class FeaturedItem extends StatelessWidget {
  final ListeningBook item;

  const FeaturedItem({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: 120,
                height: 176,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(item.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: mAccentColor,
                  ),
                  child: Column(
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.white,
                      ),
                      Text(
                        '${item.rating}',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              color: mTitleTextColor,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          item.newPrice == 0.0
              // Free
              ? FreeTag()
              : item.price == 0.0
                  ? Text(
                      '\$${item.newPrice}',
                      style: TextStyle(
                        color: mTitleTextColor,
                        fontSize: 12,
                      ),
                    )
                  : Row(
                      children: [
                        Text(
                          '\$${item.newPrice}',
                          style: TextStyle(
                            color: mTitleTextColor,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          '\$${item.price}',
                          style: TextStyle(
                            color: mSubTextColor,
                            fontSize: 12,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    )
        ],
      ),
    );
  }
}

