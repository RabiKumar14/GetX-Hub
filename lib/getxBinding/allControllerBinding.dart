import 'package:code_hub/export.dart';

//! GetX Binding for Controllers - allows storing data in the controller instead of in the UI widget
class AllControllerBinding implements Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<MyController>(() => MyController(), fenix: true);
    // Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
    Get.put<MyController>(MyController());
    Get.put<HomeController>(HomeController());
  }
}

class MyController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}

class HomeController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
