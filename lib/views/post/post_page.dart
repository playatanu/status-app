import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mood/util/background_color_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mood/util/config.dart';
import 'controller/post_controller.dart';
import 'widgets/post_color_palate.dart';
import 'widgets/post_done_button.dart';
import 'widgets/post_textfield.dart';
import 'widgets/post_textstyle_button.dart';

// ignore: must_be_immutable
var postcontoller = PostController();

class InitPost extends StatelessWidget {
  const InitPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(
                Icons.post_add,
                color: white,
                size: 50,
              ),
              onPressed: () {
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
            ),
            // Text(
            //   'Update your Post',
            //   style: b18w,
            // ),
          ],
        ),
      ),
    );
  }
}
//

// class PostPage extends StatelessWidget {
//   const PostPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(
//         () => Container(
//             color: colors[postcontoller.background_color.value],
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
//               child: Stack(alignment: Alignment.center, children: [
//                 Center(
//                     child: Padding(
//                   padding: const EdgeInsets.only(bottom: 100),
//                   child: PostTextEdit(
//                     postcontoller: postcontoller,
//                   ),
//                 )),
//                 PostDoneButton(postcontoller: postcontoller),
//                 PostTextStyleButton(postcontoller: postcontoller),
//                 Positioned(
//                     bottom: 20,
//                     child: SizedBox(
//                       height: 60,
//                       width: 350,
//                       child: Center(
//                           child: ColorPalet(postcontoller: postcontoller)),
//                     )),
//               ]),
//             )),
//       ),
//     );
//   }
// }
