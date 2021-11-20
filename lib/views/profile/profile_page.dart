import 'package:mood/util/background_color_list.dart';
import 'package:mood/util/config.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mood/views/profile/controller/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            const ProfileDetels(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Moods',
                style: r18w,
              ),
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: colors.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: colors[index],
                  child: GridTile(
                    footer: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.linked_camera,
                          color: white,
                          size: 25,
                        ),
                        Text(
                          index.toString(),
                          style: b21w,
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: AutoSizeText(
                          'Hello World Hello World Hello World Hello World',
                          style: TextStyle(color: white),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ), //just for testing, will fill with image later
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

ProfileController profileController = ProfileController();

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
        Text(
          '@${profileController.username.value}',
          style: r13w,
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
