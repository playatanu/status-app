import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:mood/util/config.dart';

void newbottomSheet() {
  Get.bottomSheet(Container(
    decoration: const BoxDecoration(
      color: black,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10), topRight: Radius.circular(10)),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Commnet',
            style: b18w,
          ),
          ListTile(
            title: Text("Option 1"),
            trailing: Icon(Icons.access_alarms),
          ),
          ListTile(
            title: Text("Option 2"),
            trailing: Icon(Icons.ac_unit),
          ),
          ListTile(
            title: Text("Option 3"),
            trailing: Icon(Icons.present_to_all_sharp),
          ),
        ],
      ),
    ),
  ));
}
