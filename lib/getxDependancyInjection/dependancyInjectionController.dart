import 'package:code_hub/export.dart';
import 'package:shared_preferences/shared_preferences.dart';

///[DependancyInjectionController] example controller for the dependancy injection
class DependancyInjectionController extends GetxController {
  void incrementCounter() async {
    //! Using local memory to store data
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counter = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counter times.');
    await prefs.setInt('counter', counter);
  }
}
