import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';

var dialog = HomeItem(
    title: 'Show Dialog',
    subtitle: 'GetX Dialog that allows customisation',
    action: () {
      //! GetX Show Dialog
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
    });
