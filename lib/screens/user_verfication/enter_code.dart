import 'dart:async';
import 'package:brum_brum_ride_electric/constains/app_colors.dart';
import 'package:brum_brum_ride_electric/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class EnterCode extends StatefulWidget {
  final String number;
  const EnterCode({super.key, required this.number});

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  bool isComplete = false;
  StreamController<ErrorAnimationType> errorController =
      StreamController<ErrorAnimationType>();

  TextEditingController textEditingController = TextEditingController();
  bool hasError = false;
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w, top: 220.h, right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Enter Code",
                style: userHeadingStyle,
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                "Please enter the code that\nwe shared on",
                style: userSubHeadingStyle,
              ),
              SizedBox(
                height: 25.h,
              ),
              Text(
                widget.number,
                style: userTextInputStyle,
              ),
              SizedBox(
                height: 25.h,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Resend Code",
                  style: userTextInputStyle.copyWith(color: userheadingText),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              PinCodeTextField(
                keyboardType: TextInputType.number,
                length: 6,
                obscureText: false,
                pinTheme: PinTheme(
                    shape: PinCodeFieldShape.circle,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50.h,
                    fieldWidth: 44.w,
                    activeFillColor: Colors.white,
                    inactiveColor: userheadingText),
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),
                errorAnimationController: errorController, // Pass it here
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                    print(currentText);
                  });
                },
                appContext: Get.context!,
              ),
              SizedBox(height: 50.h),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    textStyle: const TextStyle(
                      fontSize: 24,
                    ),
                    fixedSize: Size(340.h, 40.w),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: currentText.length == 6 ? () {} : null,
                child: const Center(
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
