import 'package:code_hub/export.dart';
import 'package:code_hub/getxControllerStateObx/stateObxController.dart';
import 'package:code_hub/home.dart';

//! GetX Widget when variable cannot be used to define
// final name = RxString('');
// final isLogged = RxBool(false);
// final count = RxInt(0);
// final balance = RxDouble(0);
// final items = RxList([]);
// final myMap = RxMap({});

//! GetX Controller State Management using Obx
var stateObx = HomeItem(
    title: 'Controller State Management',
    subtitle: 'GetX Controller to manage State using Obx',
    action: () {
      Get.to(StateObx());
    });

///[StateObx]  GetX State Management using Controller page
class StateObx extends StatelessWidget {
  //! Call the Name Controller
  final StateObxController nameController = Get.put(StateObxController());
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
