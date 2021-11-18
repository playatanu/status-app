import 'package:alpha/util/config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

import 'widgets/foryou_following.dart';
import 'widgets/side_menu.dart';
import 'widgets/user_name_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = <Color>[
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.cyan
    ];

    final List<String> names = <String>[
      'Atanu Debnath',
      'Rum Saha',
      'Anikesh Debnath',
      'Choto Debnath',
      'Rahul Das'
    ];

    const String demotext = 'Hello Wolrd 😀';

    return Scaffold(
      body: Stack(children: [
        TikTokStyleFullPageScroller(
          contentSize: colors.length,
          swipePositionThreshold: 0.2,
          // ^ the fraction of the screen needed to scroll
          swipeVelocityThreshold: 1000,
          // ^ the velocity threshold for smaller scrolls
          animationDuration: const Duration(milliseconds: 200),
          // ^ how long the animation will take
          onScrollEvent: _handleCallbackEvent,
          // ^ registering our own function to listen to page changes
          builder: (BuildContext context, int index) {
            return Container(
                color: colors[index],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(children: [
                    const Center(
                        child: AutoSizeText(
                      demotext,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40, color: white),
                      maxLines: 20,
                    )),
                    const Sidemenu(),
                    UserNameCard(names: names, index: index),
                  ]),
                ));
          },
        ),
        const ForYouFollowing(),
      ]),
    );
  }

  void _handleCallbackEvent(ScrollEventType type, {int? currentIndex}) {
    // ignore: avoid_print
    print(
        " $currentIndex Scroll callback received with data: {type: $type, and index: ${currentIndex ?? 'not given'}}");
  }
}
