import 'package:alpha/util/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: black,
          body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: ListView(
              physics:
                  const ScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              children: const [
                ProfileDetels(),
                TabBar(tabs: [
                  Tab(
                    text: 'Me',
                  ),
                  Tab(
                    text: 'Liked',
                  ),
                ]),
                SizedBox(
                  height: 600,
                  child: TabBarView(children: [
                    Text(
                      'dsad',
                      style: r18w,
                    ),
                    Text(
                      'dsad',
                      style: r18w,
                    ),
                  ]),
                )
              ],
            ),
          ),
        ));
  }
}

class ProfileDetels extends StatelessWidget {
  const ProfileDetels({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 50.0,
          backgroundColor: white,
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Atanu Debnath',
          style: b21w,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            'Flutter Dev ',
            style: r13w,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: const [
                  Text(
                    '24',
                    style: b18w,
                  ),
                  Text(
                    'Following',
                    style: r13w,
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '1.5k',
                    style: b18w,
                  ),
                  Text(
                    'Follwer',
                    style: r13w,
                  ),
                ],
              ),
              Column(
                children: const [
                  Text(
                    '3',
                    style: b18w,
                  ),
                  Text(
                    'Likes',
                    style: r13w,
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: red, // background
                onPrimary: white, // foreground
              ),
              onPressed: () {},
              child: const Text('Follow'),
            ),
            const SizedBox(width: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: red, // background
                onPrimary: white, // foreground
              ),
              onPressed: () {},
              child: const Icon(
                Icons.portable_wifi_off_outlined,
                color: white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
