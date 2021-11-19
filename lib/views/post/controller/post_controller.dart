// ignore_for_file: duplicate_ignore, avoid_print
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:mood/views/profile/controller/profile_controller.dart';

class PostController extends GetxController {
  var textEditingController = TextEditingController();
  CollectionReference posts = FirebaseFirestore.instance.collection('posts');

  ProfileController profileController = ProfileController();
  // ignore: non_constant_identifier_names
  RxInt background_color = 0.obs;
  RxInt textstyle = 0.obs;

  // ignore: non_constant_identifier_names
  change_background_color(int index) {
    background_color.value = index;
  }

  // ignore: non_constant_identifier_names
  change_textstyle() {
    textstyle.value = textstyle.value + 1;

    if (textstyle.value > 3) {
      textstyle.value = 0;
    }
  }

  Future<void> post(BuildContext context) async {
    // ignore: avoid_print
    (textEditingController.text == '')
        ? {
            Scaffold.of(context).showSnackBar(const SnackBar(
              dismissDirection: DismissDirection.up,
              content: Text("You can't post Empty moods 🙁"),
            ))
          }
        : {
            Scaffold.of(context).showSnackBar(const SnackBar(
              dismissDirection: DismissDirection.up,
              content: Text("Sending Your Moods... "),
            )),
            posts.add({
              'username': profileController.username.value,
              'posttext': textEditingController.text, // John Doe
              'colorindex': background_color.value, // Stokes and Sons
              'styleindex': textstyle.value,
              'likecount': 0,
              'uid': 1234,
            }).then((value) {
              print("Post Send Sescess Full");
              // ignore: deprecated_member_use
              Scaffold.of(context).showSnackBar(const SnackBar(
                dismissDirection: DismissDirection.up,
                content: Text("Your Moods successfully posted 😋"),
              ));
              textEditingController.clear();
              background_color.value = 0;
              // ignore: invalid_return_type_for_catch_error
            }).catchError((error) => print("Failed to add user: $error"))
          };
  }
}
