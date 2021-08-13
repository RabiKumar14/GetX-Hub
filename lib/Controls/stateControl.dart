import 'package:code_hub/Data/stateData.dart';
import 'package:code_hub/Exports/export.dart';

//! Name Controller
class NameController extends GetxController {
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
