import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../constants.dart';

Future<dynamic>? navigateWithTransation(Widget screen) {
  return Get.to(() =>  screen,
      duration: durationPages,
      transition: Transition.fade);
}