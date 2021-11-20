import 'package:mood/util/config.dart';
import 'package:mood/views/post/controller/post_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../landing_page.dart';

class PostDoneButton extends StatelessWidget {
  const PostDoneButton({
    Key? key,
    required this.postcontoller,
  }) : super(key: key);

  final PostController postcontoller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                Get.back();
                print('Get back pressed');
              },
              child: const Text(
                'Cancel',
                style: b18w,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
            ),
            TextButton(
              onPressed: () {
                postcontoller.post(context);

                print('done clicked');
              },
              child: const Text(
                'Done',
                style: b18w,
              ),
            ),
          ],
        ));
  }
}
