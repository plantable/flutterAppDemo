import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/base_widgets.dart/custom_text_field.dart';
import 'package:plantable/base/constatnts/color_constants.dart';

import '../controllers/feedback_controller.dart';

class FeedbackView extends GetView<FeedbackController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback'),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'We are always looking for ways to improve, and would love here any ideas and suggestions for our app. we\'ll do our best to include them in our next releases.\nThank you!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            CustomTextField(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              maxLines: 10,
              height: 200.0,
              padding: EdgeInsets.only(
                  top: 500.0, bottom: 10.0, left: 10.0, right: 10.0),
              hint: 'Write your message here...',
              // controller: controller.passwordConroller,
              isPassword: false,
            ),
            CustomButton(
              callBack: () async {
                // print(controller.emailConroller.text);
                // controller.doLogin();
              },
              btnText: 'Send',
              btnColor: kPrimaryColor,
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
