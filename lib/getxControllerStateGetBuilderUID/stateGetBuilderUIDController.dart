import 'package:code_hub/exampleData.dart';
import 'package:code_hub/export.dart';

///[StateGetBuilderUIDController] Controls the age and updates using an unique id
class StateGetBuilderUIDController extends GetxController {
  int age = rabi.age;

//! Fuction to increment int and updating based on ID
  void increment() {
    age++;
    update(['txtCount']);
  }
}
