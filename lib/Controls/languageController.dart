import 'package:code_hub/Exports/export.dart';

///[LanController] Controls the language selection
class LanController extends GetxController {
  //! function to detect the language to change to
  void changeLanguage(var param1, var param2) {
    var locale = Locale(param1, param2);
    //! updates the locale
    Get.updateLocale(locale);
  }
}
