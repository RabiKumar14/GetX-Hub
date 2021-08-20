import 'package:code_hub/export.dart';
import 'package:code_hub/getxInternalisation/InternalisationController.dart';
import 'package:code_hub/home.dart';

//! GetX internalisation/localisation to detect language
var internalisation = HomeItem(
    title: 'Internalisation',
    subtitle: 'Implementing Internalisation using GetX',
    action: () {
      Get.to(Internalisation());
    });

///[Internalisation] Internalisation Page
class Internalisation extends StatelessWidget {
  final InternalisationController lanController =
      Get.put(InternalisationController());
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
