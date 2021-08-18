import 'package:code_hub/Controls/stateControl.dart';
import 'package:code_hub/Exports/export.dart';

//! GetX Widget when variable cannot be used to define
// final name = RxString('');
// final isLogged = RxBool(false);
// final count = RxInt(0);
// final balance = RxDouble(0);
// final items = RxList([]);
// final myMap = RxMap({});

///[StatePage]  GetX State Management using Controller page
// ignore: must_be_immutable
class StatePage extends StatelessWidget {
  //! Call the Name Controller
  NameController nameController = Get.put(NameController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Auto Updating Widgets when values are updated
            Obx(() => Text('Name is ${nameController.name.value.firstName}')),
            Obx(() => Text('My age is ${nameController.name.value.age}')),
            TextButton(
                onPressed: () {
                  nameController.convertToUpperCase();
                },
                child: Text('Upper')),
            TextButton(
              onPressed: () {
                nameController.increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    ));
  }
}
