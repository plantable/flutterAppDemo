import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String? hint;

  TextInputType? keyboard;
  TextEditingController? controller;

  bool isPassword = false;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool? isEnabled;
  int? maxLength;
  int? maxLines;
  double? height;
  EdgeInsets? margin;

  Function(String)? onChange;

  EdgeInsets? padding = EdgeInsets.all(0);

  CustomTextField(
      {this.hint,
      this.keyboard,
      this.margin,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.isEnabled = true,
      this.maxLength = 100,
      this.maxLines = 1,
      this.isPassword = false,
      this.padding,
      this.height = 45.0,
      this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: margin,
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: TextField(
        obscureText: isPassword,
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(fontSize: 14),
          contentPadding: padding,
          hintText: hint,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(color: Colors.black, width: 1.0),
          ),
        ),
      ),
    );
  }
}
