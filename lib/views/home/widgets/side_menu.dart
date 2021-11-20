import 'package:mood/util/config.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Sidemenu extends StatelessWidget {
  const Sidemenu({
    Key? key,
    required this.likecount,
  }) : super(key: key);

  final int likecount;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 10,
      bottom: 10,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.control_point_duplicate_sharp,
                      color: white,
                      size: 30,
                    )),
                Text(
                  likecount.toString(),
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
          ]),
    );
  }
}
