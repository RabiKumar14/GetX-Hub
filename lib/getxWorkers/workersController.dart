import 'package:code_hub/export.dart';

///[WorkerController] controls the different GetX workers that checks state changes
class WorkerController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  void onInit() {
//! called everytime the value of count changes
    ever(count, (_) => print(count));
//! called every time a value of any variable in a list changes
    // everAll([count], (_) => print(count));
//! called only once when value of variable changes
    // once(count, (_) => print(count));
//! called every time the user stops typing for 1 sec
    // debounce(count, (_) => print(count.toString() + ', User stopped typing'),
    //     time: Duration(seconds: 1));
//! firing after every 3 sec and ignoring any changes made between
    // interval(count, (_) => print(count), time: Duration(seconds: 3));
    super.onInit();
  }
}
