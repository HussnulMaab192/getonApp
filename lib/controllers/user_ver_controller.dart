import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyUser extends GetxController {
  final TextEditingController codeConrtoller = TextEditingController();
  final TextEditingController numberConrtoller = TextEditingController();
  final TextEditingController referalConrtoller = TextEditingController();

  @override
  void onInit() {
    dispose();
    super.onInit();
    // dispose();
  }

  @override
  void dispose() {
    codeConrtoller.clear();
    numberConrtoller.clear();
    referalConrtoller.clear();
  }

  bool isBlack = false;
  bool isBlankField = false;

  void checkColor(val) {
    if (val == false) {
      isBlack = false;
      update();
    }
    if (val == true) {
      isBlack = true;
      update();
    }
  }

  void chkTextField(codeConrtoller, numberConrtoller) {
    if (codeConrtoller.text.isNotEmpty && numberConrtoller.text.isNotEmpty) {
      isBlankField = true;
      update();
    } else {
      isBlankField = false;
      update();
    }
  }
}
