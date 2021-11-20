// ignore_for_file: avoid_print
// ignore: must_be_immutable
import 'package:mood/util/background_color_list.dart';
import 'package:mood/util/config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood/views/post/post_page.dart';
import 'package:mood/views/post/widgets/post_color_palate.dart';
import 'package:mood/views/post/widgets/post_done_button.dart';
import 'package:mood/views/post/widgets/post_textfield.dart';
import 'package:mood/views/post/widgets/post_textstyle_button.dart';

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
                Get.bottomSheet(
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.1,
                    child: Obx(
                      () => Container(
                          color: colors[postcontoller.background_color.value],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 20),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Center(
                                  child: Padding(
                                padding: const EdgeInsets.only(bottom: 100),
                                child: PostTextEdit(
                                  postcontoller: postcontoller,
                                ),
                              )),
                              PostDoneButton(postcontoller: postcontoller),
                              PostTextStyleButton(postcontoller: postcontoller),
                              Positioned(
                                  bottom: 20,
                                  child: SizedBox(
                                    height: 60,
                                    width: 350,
                                    child: Center(
                                        child: ColorPalet(
                                            postcontoller: postcontoller)),
                                  )),
                            ]),
                          )),
                    ),
                  ),
                  enableDrag: true,
                  isScrollControlled: true,
                  persistent: true,
                );
              },
              child: const Icon(
                Icons.post_add,
                color: white,
                size: 30,
              )),
        ],
      ),
    );
  }
}

    // PostPage(),