import 'package:code_hub/screens/classState.dart';
import 'package:code_hub/screens/reactiveState.dart';
import 'package:code_hub/screens/unnamedRoutesPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeItem {
  final String title;
  final String subtitle;
  final VoidCallback action;

  HomeItem({required this.title, required this.subtitle, required this.action});
}

List<HomeItem> homeList = [
  HomeItem(
      title: 'Snackbar',
      subtitle: 'Getx Snackbar that allows customisation.',
      action: () {
        Get.snackbar(
          'Snackbar Title', 'Snackbar Message',
          snackPosition: SnackPosition.BOTTOM,
          // titleText: Text('Customisable Title'),
          // messageText: Text('Customisable Message'),
          colorText: Colors.blue,
          // backgroundColor: Colors.grey,
          borderRadius: 20,
          margin: EdgeInsets.all(20),
          maxWidth: 200,
          animationDuration: Duration(seconds: 2),
          backgroundGradient:
              LinearGradient(colors: [Colors.red, Colors.green]),
          borderColor: Colors.purple,
          borderWidth: 3,
          boxShadows: [
            BoxShadow(
                color: Colors.yellow,
                offset: Offset(30, 50),
                spreadRadius: 20,
                blurRadius: 10)
          ],
          isDismissible: true,
          dismissDirection: SnackDismissDirection.HORIZONTAL,
          forwardAnimationCurve: Curves.bounceInOut,
          duration: Duration(seconds: 20),
          icon: Icon(
            Icons.today,
            color: Colors.white,
          ),
          shouldIconPulse: true,
          leftBarIndicatorColor: Colors.red,
          mainButton: TextButton(
            onPressed: () {},
            child: Text('Retry'),
          ),
          onTap: (val) {
            print('Clicked');
          },
// overlayBlur: 5,
// overlayColor: Colors.pink
          padding: EdgeInsets.all(40),
          showProgressIndicator: true,
          progressIndicatorBackgroundColor: Colors.pink,
          progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white),
          reverseAnimationCurve: Curves.bounceInOut,
          snackbarStatus: (val) {
            print(val);
          },
          userInputForm: Form(
            child: TextField(),
          ),
        );
      }),
  HomeItem(
      title: 'Show Dialog',
      subtitle: 'GetX Dialog that allows customisation',
      action: () {
        Get.defaultDialog(
          title: 'Dialog Title',
          titleStyle: TextStyle(fontSize: 11),
          middleText: 'Middle Text',
          middleTextStyle: TextStyle(fontSize: 10),
          backgroundColor: Colors.pink,
          radius: 80,
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Text('Data Loading'),
              ),
            ],
          ),
          textCancel: 'Cancel',
          cancelTextColor: Colors.white,
          textConfirm: 'Confirm',
          confirmTextColor: Colors.white,
          onCancel: () {},
          onConfirm: () {},
          buttonColor: Colors.blue,
          cancel: Text(
            'Cancel',
            style: TextStyle(color: Colors.white),
          ),
          confirm: Text(
            'Confirm',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Action 1'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Action 2'),
            ),
          ],
          barrierDismissible: true,
        );
      }),
  HomeItem(
      title: 'Bottom Sheet',
      subtitle: 'GetX Bottom Sheet',
      action: () {
        Get.bottomSheet(
            Center(
              child: Text(
                'Test',
                style: TextStyle(fontSize: 40),
              ),
            ),
            barrierColor: Colors.blue.withOpacity(0.5),
            backgroundColor: Colors.pink);
      }),
  HomeItem(
      title: 'Unnamed Routes',
      subtitle: 'GetX Unnamed Routes',
      action: () {
        Get.to(UnnamedRoutes());
      }),
  HomeItem(
      title: 'Named Routes',
      subtitle: 'GetX Named Routes',
      action: () {
        Get.toNamed('/namedRoute');
      }),
  HomeItem(
      title: 'Reactive State Management',
      subtitle: 'GetX State Management using Obx',
      action: () {
        Get.to(RState());
      }),
  HomeItem(
      title: 'Obx & Custom Class State Management',
      subtitle: 'Getx State Management\nusing Obx & Custom Class',
      action: () {
        Get.to(StateMng());
      }),
  HomeItem(title: 'Empty', subtitle: '', action: () {}),
];
