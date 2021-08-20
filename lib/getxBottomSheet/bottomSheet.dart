import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';

var bottomsheet = HomeItem(
    title: 'Bottom Sheet',
    subtitle: 'GetX Bottom Sheet',
    action: () {
      //! GetX Bottom Sheet
      Get.bottomSheet(
          Center(
            child: Text(
              'Test',
              style: TextStyle(fontSize: 40),
            ),
          ),
          barrierColor: Colors.blue.withOpacity(0.5),
          backgroundColor: Colors.pink);
    });
