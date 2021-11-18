import 'package:alpha/util/background_color_list.dart';
import 'package:alpha/util/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'controller/post_controller.dart';

// ignore: must_be_immutable
class PostPage extends StatelessWidget {
  PostPage({Key? key}) : super(key: key);
  var postcontoller = PostController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Container(
          color: colors[postcontoller.background_color.value],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Stack(alignment: Alignment.center, children: [
              Center(
                  child: Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: TextField(
                        controller: postcontoller.textEditingController,
                        onChanged: (value) {
                          // ignore: avoid_print
                          print(value);
                        },
                        cursorColor: white,
                        maxLength: 700,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 40,
                          color: white,
                        ),
                        minLines: 1,
                        maxLines: 15,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type your Mood',
                          hintStyle: TextStyle(
                              color: white.withOpacity(0.5), fontSize: 40),
                        ),
                      ))),
              Positioned(
                  top: 10,
                  right: 10,
                  child: TextButton(
                    onPressed: () {
                      // ignore: avoid_print
                      print('done clicked');
                      postcontoller.textEditing_clear();
                      postcontoller.background_color.value = 0;
                      // ignore: deprecated_member_use
                      Scaffold.of(context).showSnackBar(const SnackBar(
                        dismissDirection: DismissDirection.up,
                        content: Text("Sending Your Moods "),
                      ));
                    },
                    child: const Text(
                      'Done',
                      style: b18w,
                    ),
                  )),
              const Positioned(
                  bottom: 100,
                  child: Text(
                    'TextStyle',
                    style: b18w,
                  )),
              Positioned(
                  bottom: 20,
                  child: SizedBox(
                    height: 60,
                    width: 350,
                    child:
                        Center(child: ColorPalet(postcontoller: postcontoller)),
                  )),
            ]),
          )),
    ));
  }
}

class ColorPalet extends StatelessWidget {
  const ColorPalet({
    Key? key,
    required this.postcontoller,
  }) : super(key: key);

  final PostController postcontoller;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                postcontoller.change_background_color(index);
                // ignore: avoid_print
                print('value');
                // ignore: avoid_print
                print(postcontoller.background_color.value);
              },
              child: CircleAvatar(
                backgroundColor: white,
                radius: 22,
                child: CircleAvatar(
                  foregroundColor: white,
                  backgroundColor: colors[index],
                  radius: 20,
                ),
              ),
            ),
          );
        });
  }
}
  //  CircleAvatar(backgroundColor: red),