import 'package:flutter/material.dart';
import '../../../constains/app_colors.dart';
import '../../../themes.dart';

TextFormField defaultTextField(
    {required String hintText,
    Widget? suffixIcon,
    TextInputType? keyboardType,
    bool obscureText = false,
    required TextEditingController controller,
    void Function(String)? onchanged,
    TextInputAction? textInputAction}) {
  return TextFormField(
    onChanged: onchanged,
    controller: controller,
    textAlign: TextAlign.center,
    keyboardAppearance: Brightness.dark,
    textInputAction: textInputAction,
    obscureText: obscureText,
    keyboardType: keyboardType,
    decoration: InputDecoration(
      hintText: hintText,
      hintStyle: textInputStyle,
      suffixIcon: suffixIcon,
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(24))),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: primaryColor, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
    ),
    validator: (value) {
      if (value!.isEmpty) {
        return "text field can not be empty";
      } else {
        return null;
      }
    },
  );
}
