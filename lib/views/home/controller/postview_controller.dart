// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PostViewController extends GetxController {
  RxString uname = ''.obs;

  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future uidusername(uid) async {
    CollectionReference users = firestore.collection('users');

    DocumentSnapshot result = await users.doc(uid.toString()).get();
    Map username = result.data() as Map;

    print(username['uname'].toString());

    uname.value = username['uname'].toString();
  }
}
