import 'package:code_hub/export.dart';

///[GetViewController] Controls the count for the GetView page
class GetViewController extends GetxController {
  var count = 0.obs;
  void increment() {
    count++;
  }
}
