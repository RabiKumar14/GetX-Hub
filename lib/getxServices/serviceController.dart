import 'package:code_hub/export.dart';
import 'package:shared_preferences/shared_preferences.dart';

///[ServiceController] GetX service widget that defines what it does
class ServiceController extends GetxService {
  void incrementCounter() async {
    //! Using local memory to store data
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int counterS = (prefs.getInt('counter') ?? 0) + 1;
    print('Pressed $counterS times.');
    await prefs.setInt('counter', counterS);
  }
}
