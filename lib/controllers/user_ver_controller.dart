import 'package:get/get.dart';

class VerifyUser extends GetxController {
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
