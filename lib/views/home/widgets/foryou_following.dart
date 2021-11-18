import 'package:alpha/util/config.dart';
import 'package:flutter/material.dart';

class ForYouFollowing extends StatelessWidget {
  const ForYouFollowing({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text(
            'For You',
            style: b18w,
          ),
          Text(
            'Following',
            style: r18w70,
          )
        ],
      ),
    );
  }
}
