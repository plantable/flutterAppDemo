import 'package:flutter/material.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

class BaseScaffold extends StatefulWidget {
  final Widget? child;
  final AppBar? appbar;

  Color? bgcolor = kAppBackgroundColor;

  Widget? drawer;

  Widget? bottomNavigationBar;
  Widget? floatingActionButton;

  FloatingActionButtonLocation floatingActionButtonLocation;

  bool resizeToAvoidBottomInset;

  BoxDecoration? decoration;

  BaseScaffold(
      {Key? key,
      required this.child,
      this.appbar,
      this.floatingActionButtonLocation =
          FloatingActionButtonLocation.centerDocked,
      this.bgcolor = kAppBackgroundColor,
      this.drawer,
      this.floatingActionButton,
      this.resizeToAvoidBottomInset = false,
      this.decoration,
      this.bottomNavigationBar})
      : super(key: key);

  @override
  _BasicScaffoldState createState() => _BasicScaffoldState();
}

class _BasicScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appbar,
      resizeToAvoidBottomInset: widget.resizeToAvoidBottomInset,
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      backgroundColor: widget.bgcolor,
      bottomNavigationBar: widget.bottomNavigationBar,
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: widget.decoration,
        child: widget.child,
      )),
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
