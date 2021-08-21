import 'package:code_hub/export.dart';
import 'package:code_hub/getxGetView/getviewController.dart';
import 'package:code_hub/home.dart';

var getviewPage = HomeItem(
    title: 'GetView Widget',
    subtitle: 'GetX widget that is linked to a single controller',
    action: () {
      Get.to(GetViewPage());
    });

//! Extends to a GetView with assigned Controller so that controller does not need calling
///[GetViewPage] GetX GetView widget
class GetViewPage extends GetView<GetViewController> {
  @override
  Widget build(BuildContext context) {
    Get.put(GetViewController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('Value is ${controller.count}'),
            ),
            TextButton(
              onPressed: () {
                print(controller.hashCode);
                controller.increment();
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
