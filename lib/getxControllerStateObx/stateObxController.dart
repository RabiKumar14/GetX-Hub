import 'package:code_hub/exampleData.dart';
import 'package:code_hub/export.dart';

///[StateObxController] Controls what happens with the name data
class StateObxController extends GetxController {
  var name = rabi.obs;
  //! Function to convert string to upper case
  void convertToUpperCase() {
    name.update((name) {
      name!.firstName = name.firstName.toString().toUpperCase();
    });
  }

//! Function to increment number
  void increment() {
    name.update((name) {
      name!.age++;
    });
  }
}
