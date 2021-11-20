// ignore_for_file: avoid_print

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mood/util/background_color_list.dart';
import 'package:mood/util/backgroung_textstyle_list.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';
import 'widgets/foryou_following.dart';
import 'widgets/side_menu.dart';
import 'widgets/user_name_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? uname;

  UserModel({this.uname});

  UserModel.frommap(Map<String, dynamic> map) {
    uname = map['uname'];
  }
}

FirebaseFirestore users = FirebaseFirestore.instance;

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Stack(children: [
        StreamBuilder(
          stream: FirebaseFirestore.instance.collection('posts').snapshots(),
          builder:
              (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            return TikTokStyleFullPageScroller(
              contentSize: snapshot.data!.docs.length,
              swipePositionThreshold: 0.2,
              swipeVelocityThreshold: 1000,
              animationDuration: const Duration(milliseconds: 200),
              builder: (BuildContext context, int index) {
                return Container(
                    color: colors[snapshot.data!.docs[index]['colorindex']],
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Stack(children: [
                        Center(
                            child: AutoSizeText(
                          snapshot.data!.docs[index]['posttext'],
                          textAlign: TextAlign.center,
                          style: maxfontstyle[snapshot.data!.docs[index]
                              ['styleindex']],
                          maxLines: 20,
                        )),
                        Sidemenu(
                            likecount: snapshot.data!.docs[index]['likecount']),
                        UserNameCard(
                          nametag: snapshot.data!.docs[index]['nametag'],
                          uid: snapshot.data!.docs[index]['uid'],
                          index: index,
                          username: snapshot.data!.docs[index]['username'],
                        ),
                      ]),
                    ));
              },
            );
          },
        ),
        const ForYouFollowing(),
      ]),
    ));
  }
}
