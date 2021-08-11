import 'package:code_hub/screens/homePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRoutes extends StatelessWidget {
  const NamedRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named Routes'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('toNamed() to Page 2'),
            trailing: Text('With option to return to prev screen'),
            onTap: () {
              Get.toNamed('/page2/0');
            },
          ),
          ListTile(
            title: Text('offNamed() to Page 2'),
            trailing: Text('No option to return to prev screen'),
            onTap: () {
              Get.offNamed('/page2/0');
            },
          ),
          ListTile(
            title: Text('offAllNamed() to Page 2'),
            trailing: Text('No option to return to all prev screen'),
            onTap: () {
              Get.offAllNamed('/page/0');
            },
          ),
          ListTile(
            title: Text('toNamed() to Page 2 with value'),
            trailing: Text('Passing value to next screen'),
            onTap: () {
              Get.toNamed('/page2/newdata1234');
            },
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('If you cannot return, press here'),
            onTap: () {
              Get.offAll(
                HomePage(),
              );
            },
          ),
          ListTile(
            title: Text('${Get.parameters['data']}'),
          )
        ],
      ),
    );
  }
}
