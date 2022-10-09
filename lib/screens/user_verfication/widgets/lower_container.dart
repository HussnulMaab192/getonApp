import 'package:brum_brum_ride_electric/controllers/user_ver_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../themes.dart';
import '../enter_code.dart';
import 'default_text_field.dart';

// ignore: must_be_immutable
class LowerContainer extends GetView<VerifyUser> {
  bool isBlankField = true;

  LowerContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 40,
        left: 16,
        right: 16,
      ),
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(28.r),
          topRight: Radius.circular(28.r),
        ),
      ),
      child: SingleChildScrollView(
        child: GetBuilder<VerifyUser>(builder: (verifyController) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //--LETS GETON
              Text(
                "Lets Geton",
                style: userHeadingStyle,
              ),
              SizedBox(
                height: 10.h,
              ),
              // sub heading

              SelectableText(
                "To start your ride, please verify your phone number",
                style: userSubHeadingStyle,
              ),
              SizedBox(
                height: 20.h,
              ),
              // Text Fields
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: defaultTextField(
                      controller: controller.codeConrtoller,
                      hintText: "+92",
                      keyboardType: TextInputType.number,
                      onchanged: (p0) => chkTextField(),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Expanded(
                    flex: 2,
                    child: defaultTextField(
                      onchanged: (p0) {
                        controller.numberConrtoller.text.isNotEmpty
                            ? verifyController.checkColor(true)
                            : verifyController.checkColor(false);
                        chkTextField();
                      },
                      controller: controller.numberConrtoller,
                      hintText: "Enter your Phone ",
                      keyboardType: TextInputType.number,
                      suffixIcon: Icon(Icons.cancel_outlined,
                          color: !verifyController.isBlack
                              ? Colors.grey
                              : Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              defaultTextField(
                controller: controller.referalConrtoller,
                hintText: "Enter referal number       (optional)",
              ),
              SizedBox(
                height: 20.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    minimumSize: Size(double.infinity, 42.h),
                    textStyle: const TextStyle(fontSize: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: isBlankField
                      ? null
                      : () {
                          Get.to(
                            EnterCode(
                              number: controller.numberConrtoller.text,
                            ),
                          );
                        },
                  child: const Text("Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ))),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: SizedBox(
                  width: 310.w,
                  child: const Text.rich(
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    TextSpan(
                      text:
                          "By continuing, you confirm that you read and understood our ",
                      style: TextStyle(fontSize: 16, height: 1.5),
                      children: [
                        WidgetSpan(
                          child: Text(
                            "Terms & Conditions ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                height: 1.5),
                          ),
                        ),
                        WidgetSpan(
                          child: Text(
                            "and ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                height: 1.5),
                          ),
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Text(
                            "Privacy Policy ",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                height: 1.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }),
      ),
    );
  }

  void chkTextField() {
    if (controller.codeConrtoller.text.isNotEmpty &&
        controller.numberConrtoller.text.isNotEmpty) {
      isBlankField = false;
    } else {
      isBlankField = true;
    }
    controller.update();
  }
}
