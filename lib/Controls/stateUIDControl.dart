import 'package:code_hub/Data/stateData.dart';
import 'package:code_hub/Exports/export.dart';

///[UIDController] Controls the age and updates using an unique id
class UIDController extends GetxController {
  int age = rabi.age;

//! Fuction to increment int and updating based on ID
  void increment() {
    age++;
    update(['txtCount']);
  }
}
