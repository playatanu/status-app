import 'package:alpha/util/config.dart';
import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    Key? key,
    required this.names,
    required this.index,
  }) : super(key: key);

  final List<String> names;
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
            Text(names[index], style: r18w),
            const Text('Nabadwip'),
          ],
        ),
      ],
    );
  }
}
