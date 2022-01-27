import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import 'controllers/reboot.controller.dart';
import 'howto.screen.dart';
import 'journey.screen.dart';

class RebootScreen extends GetView<RebootController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            child: TabBar(
              indicatorColor: kPrimaryColor,
              tabs: [
                Tab(
                  child: Text(
                    'Journey',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    'How-to',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            JourneyView(),
            HowToView(),
          ],
        ),
      ),
    );
  }
}
