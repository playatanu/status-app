import 'package:mood/util/config.dart';
import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    Key? key,
    required this.uid,
    required this.index,
    required this.username,
    required this.nametag,
  }) : super(key: key);

  final int uid;
  final String username;
  final String nametag;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Text(nametag, style: r18w),
            Text('@$username', style: r13w),
          ],
        ),
      ],
    );
  }
}
