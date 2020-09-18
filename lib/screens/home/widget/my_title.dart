import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:listening_book/constants.dart';

class MyTitle extends StatelessWidget {

  final String text;

  const MyTitle({
    Key key, this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: mTitleTextColor,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/more.svg',
            width: 10,
            color: mTitleTextColor,
          )
        ],
      ),
    );
  }
}
