import 'package:code_hub/Controls/languageController.dart';
import 'package:code_hub/Exports/export.dart';

///[GetXInternalisation] Internalisation Page
// ignore: must_be_immutable
class GetXInternalisation extends StatelessWidget {
  LanController lanController = Get.put(LanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! uses the translation function to change text based on language chosen
            Text('hello'.tr),
            TextButton(
                onPressed: () {
                  //! language selection
                  lanController.changeLanguage('fr', 'FR');
                },
                child: Text('French')),
            TextButton(
                onPressed: () {
                  lanController.changeLanguage('hi', 'UK');
                },
                child: Text('English'))
          ],
        ),
      ),
    );
  }
}
