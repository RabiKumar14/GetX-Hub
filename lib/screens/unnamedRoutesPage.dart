import 'package:code_hub/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnnamedRoutes extends StatelessWidget {
  const UnnamedRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('to() to Page 1'),
            trailing: Text('Normal routing with option to return'),
            onTap: () {
              Get.to(Page1(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: Duration(seconds: 2),
                  curve: Curves.bounceInOut);
            },
          ),
          ListTile(
            title: Text('off() to Page 1'),
            trailing: Text('No option to return to prev screen'),
            onTap: () {
              Get.off(
                Page1(),
              );
            },
          ),
          ListTile(
            title: Text('offAll() to Page 1'),
            trailing: Text('No Option to return to all prev screens'),
            onTap: () {
              Get.offAll(
                Page1(),
              );
            },
          ),
          ListTile(
            title: Text('to() with argument passed to next page'),
            onTap: () {
              Get.to(Page1(), arguments: 'Data from Prev Page');
            },
          ),
          ListTile(
            title: Text('to() with sending argument to prev screen'),
            onTap: () async {
              var data = await Get.to(
                HomePage(),
              );
              print('$data');
            },
          ),
          ListTile(
            title: Text(
                'to() with sending argument to prev screen (Use Back with data in Page 1)'),
            onTap: () async {
              var data = await Get.to(
                Page1(),
              );
              print('$data');
            },
          )
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Back'),
            onTap: () {
              Get.back();
            },
          ),
          ListTile(
            title: Text('${Get.arguments}'),
          ),
          ListTile(
            title: Text('If you cannot return, press here'),
            onTap: () {
              Get.offAll(
                HomePage(),
              );
            },
          ),
          ListTile(
            title: Text('Back with data to prev screen'),
            onTap: () {
              Get.back(result: 'Data passed');
            },
          ),
        ],
      ),
    );
  }
}
