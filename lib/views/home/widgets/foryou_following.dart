// ignore_for_file: avoid_print
// ignore: must_be_immutable
import 'package:mood/util/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood/views/post/post_page.dart';

import '../../../landing_page.dart';

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
        children: [
          InkWell(
            onTap: () {
              print('foryou Clikde');
            },
            child: const Text(
              'For You',
              style: b18w,
            ),
          ),
          InkWell(
            onTap: () {
              print('object');
            },
            child: const Text(
              'Following',
              style: r18w70,
            ),
          ),
          InkWell(
              onTap: () {
                print('object');
                Get.to(PostPageInit());
              },
              child: Icon(
                Icons.post_add,
                color: white,
                size: 20,
              )),
        ],
      ),
    );
  }
}

    // PostPage(),