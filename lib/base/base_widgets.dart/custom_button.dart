import 'package:flutter/material.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

class CustomButton extends StatelessWidget {
  Color btnColor;
  String btnText;

  Color btnTextColor;
  Color borderColor;

  void Function()? callBack;

  EdgeInsetsGeometry margin;

  CustomButton(
      {Key? key,
      this.btnColor = kTransperentColor,
      this.btnText = '',
      this.borderColor = Colors.transparent,
      this.btnTextColor = Colors.white,
      this.margin = const EdgeInsets.all(0.0),
      this.callBack})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callBack,
      child: Container(
        margin: margin,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          color: btnColor,
        border: Border.all(color: borderColor,width: 1.0)
        ),
        width: double.infinity,
        child: Text(
          btnText,
          style: TextStyle(
              color: btnTextColor, fontWeight: FontWeight.bold, fontSize: 13.0),
          textAlign: TextAlign.center,
        ),
        padding: EdgeInsets.all(15.0),
      ),
    );
  }
}
