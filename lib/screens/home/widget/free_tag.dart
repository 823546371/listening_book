import 'package:flutter/material.dart';
import 'package:listening_book/constants.dart';

class FreeTag extends StatelessWidget {
  const FreeTag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: mAccentColor,
          ),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Text(
          'Free',
          style: TextStyle(
            color: mAccentColor,
            fontSize: 12,
          ),
        ),
      );
  }
}
