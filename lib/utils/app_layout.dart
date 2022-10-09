import 'package:flutter/material.dart';
import 'package:get/get.dart';

class appLayout {
  static getsize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHight(double pixels) {
    double x = getScreenHight() / pixels;
    return getScreenHight() / x;
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
