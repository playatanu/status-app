import 'package:alpha/util/config.dart';
import 'package:flutter/material.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

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
    return Scaffold(
      body: Stack(children: [
        TikTokStyleFullPageScroller(
          contentSize: colors.length,
          swipePositionThreshold: 0.2,
          // ^ the fraction of the screen needed to scroll
          swipeVelocityThreshold: 2000,
          // ^ the velocity threshold for smaller scrolls
          animationDuration: const Duration(milliseconds: 300),
          // ^ how long the animation will take
          onScrollEvent: _handleCallbackEvent,
          // ^ registering our own function to listen to page changes
          builder: (BuildContext context, int index) {
            return Container(
                color: colors[index],
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Stack(children: [
                    const Center(child: Text('colors')),
                    Stack(
                      children: [
                        Positioned(
                            right: 1,
                            bottom: 100,
                            child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            print('im press');
                                          },
                                          icon: const Icon(
                                            Icons.control_point_duplicate_sharp,
                                            color: white,
                                            size: 30,
                                          )),
                                      const Text(
                                        '1.5k',
                                        style: r13w,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Column(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.messenger_outline_rounded,
                                            color: white,
                                            size: 30,
                                          )),
                                      const Text(
                                        '12',
                                        style: r13w,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.more_vert,
                                        color: white,
                                        size: 30,
                                      )),
                                ])),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(names[index], style: r18w),
                                  const Text('Nabadwip'),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ]),
                ));
          },
        ),
        Padding(
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
        ),
      ]),
    );
  }

  void _handleCallbackEvent(ScrollEventType type, {int? currentIndex}) {
    // ignore: avoid_print
    print(
        " $currentIndex Scroll callback received with data: {type: $type, and index: ${currentIndex ?? 'not given'}}");
  }
}
