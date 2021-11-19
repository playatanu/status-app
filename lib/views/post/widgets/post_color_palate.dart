import 'package:flutter/material.dart';
import 'package:mood/util/background_color_list.dart';
import 'package:mood/util/config.dart';
import 'package:mood/views/post/controller/post_controller.dart';

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