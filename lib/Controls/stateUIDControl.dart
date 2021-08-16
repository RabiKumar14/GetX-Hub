import 'package:code_hub/Data/stateData.dart';
import 'package:code_hub/Exports/export.dart';

//! Getx Controller using Unique ID
class UIDController extends GetxController {
  int age = rabi.age;

//! Fuction to increment int and updating based on ID
  void increment() {
    age++;
    update(['txtCount']);
  }
}
