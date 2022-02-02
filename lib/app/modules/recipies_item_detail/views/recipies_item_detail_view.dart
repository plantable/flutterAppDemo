import 'package:bulleted_list/bulleted_list.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:plantable/base/base_widgets.dart/custom_button.dart';
import 'package:plantable/base/constatnts/color_constants.dart';
import 'package:plantable/base/languages/text_keys.dart';

import '../controllers/recipies_item_detail_controller.dart';

class RecipiesItemDetailView extends GetView<RecipiesItemDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              Icons.favorite_border_outlined,
              size: 24,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              _header(),
              SizedBox(height: 10.0),
              _ingredents(),
              SizedBox(height: 10.0),
              _instructions(),
              SizedBox(height: 10.0),
              _nutrition()
            ],
          ),
        ),
      ),
    );
  }

  _header() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/food.jpeg',
            height: 200.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'RECIPE',
                  style: TextStyle(letterSpacing: 2.0, color: kPrimaryColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0, bottom: 8.0),
                  child: Text(
                    'Acai Bowl',
                    style: TextStyle(
                        letterSpacing: 1.0,
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 10.0),
                        padding: EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 6.0),
                        color: kPrimaryColor,
                        child: Text(
                          'P',
                          style: TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.bold),
                        )),
                    Text('By Plantable',
                        style: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0)),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            height: 2.0,
            color: Colors.black,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '10 MINUTS',
                  style: TextStyle(color: Colors.black38, fontSize: 12.0),
                ),
                Text('1 SERVING',
                    style: TextStyle(color: Colors.black38, fontSize: 12.0)),
                Text('8 INGREDENTS',
                    style: TextStyle(color: Colors.black38, fontSize: 12.0)),
              ],
            ),
          )
        ],
      ),
    );
  }

  _ingredents() {
    return Container(
      width: Get.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('INGREDIENTS'),
          ),
          Divider(
            height: 2.0,
            color: Colors.black26,
          ),
          _ingredentPoints('1/2 cup water'),
          _ingredentPoints('2 table spoon hemp hearts'),
          _ingredentPoints('1/2 apple'),
          _ingredentPoints('1/2 lemon, juiced'),
          _ingredentPoints('1/2 cup broccoli florets,chopped'),
          _ingredentPoints('1/2 cup celery sticks - chopped'),
          _ingredentPoints('1 table spoon hemp hearts'),
          _ingredentPoints('1 table spoon chia seeds'),
          CustomButton(
            callBack: () async {
              // print(controller.emailConroller.text);
              // controller.doLogin();
            },
            btnText: 'ADD TO SHIPPING LIST',
            btnColor: kPrimaryColor,
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
  }

  _ingredentPoints(
    String s,
  ) {
    return Row(
      children: [
        Container(
            padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 8.0),
            child: Row(
              children: [
                Container(
                  height: 7.0,
                  width: 7.0,
                  decoration: BoxDecoration(
                      color: kPrimaryColor, shape: BoxShape.circle),
                ),
                // Text(
                //   '->',
                //   style: TextStyle(
                //       color: kPrimaryColor,
                //       fontSize: 14.0,
                //       fontWeight: FontWeight.bold),
                // ),
                SizedBox(
                  width: 10.0,
                ),
                Text(s,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600)),
              ],
            ))

        // Text(
        //   ' \u2022 Mani',
        //   style: TextStyle(
        //       fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
        //   textAlign: TextAlign.center,
        // ),
      ],
    );
  }

  _instructions() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('INGREDIENTS'),
          ),
          Divider(
            height: 2.0,
            color: Colors.black26,
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '1.',
                  style: TextStyle(color: kPrimaryColor, fontSize: 16.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: Text(
                    'Instrunctions based on the Recipe which is selected by the user',
                    style: TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0),
            child: Divider(
              height: 2.0,
              color: Colors.black26,
            ),
          ),
        ],
      ),
    );
  }

  _nutrition() {
    return Container(
      color: Colors.white,
      width: Get.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('NUTRITION PER SERVING'),
          ),
          Divider(
            height: 2.0,
            color: Colors.black26,
          ),
          _onServing(),
          _nutritionTypeHeader('Calories', '360.0 k cal'),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          _nutritionTypeHeader('Carbs', '36.0 g'),
          _nutritionTypeItems('Net Carbs', '--'),
          _nutritionTypeItems('Sugers', '14.0 g'),
          _nutritionTypeItems('Fiber', '10.0 g'),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          _nutritionTypeHeader('Protein', '16.0 g'),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          _nutritionTypeHeader('Fats', '20.0 g'),
          _nutritionTypeItems('Saturated fats', '2.0 g'),
          _nutritionTypeItems('Trans fats', '0.0 g'),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          _nutritionTypeHeader('Other', ''),
          _nutritionTypeItems('Cholesterol', '0.0 mg'),
          _nutritionTypeItems('Sodium', '14.0 g'),
          _nutritionTypeItems('Potassium', '10.0 g'),
          SizedBox(
            height: 5.0,
          ),
          Divider(
            height: 2.0,
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: 100.0,
            width: Get.width,
            color: kAppBackgroundColor,
            child: Center(
              child: Text(
                'Feedback',
                style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0),
              ),
            ),
          )
        ],
      ),
    );
  }

  _onServing() {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('One Serving',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600)),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Text("100%\n 10 g"),
                        progressColor: kPrimaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'CARBS',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Text("100%\n 10 g"),
                        progressColor: kPrimaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'PROTEIN',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      CircularPercentIndicator(
                        radius: 50.0,
                        lineWidth: 5.0,
                        percent: 1.0,
                        center: Text("100%\n 10 g"),
                        progressColor: kPrimaryColor,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'FAT',
                          style: TextStyle(fontSize: 12.0),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(
            height: 2.0,
          )
        ],
      ),
    );
  }

  _nutritionTypeHeader(String name, String value) {
    return Container(
      width: Get.width,
      color: kAppBackgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 5.0),
      child: Row(
        children: [
          Text(name,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0)),
          Spacer(),
          Text(
            value,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
          )
        ],
      ),
    );
  }

  _nutritionTypeItems(String name, String value) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
      child: Row(
        children: [
          Text(name, style: TextStyle(fontSize: 12.0)),
          Spacer(),
          Text(
            value,
            style: TextStyle(fontSize: 12.0),
          )
        ],
      ),
    );
  }
}
