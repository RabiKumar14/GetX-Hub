import 'package:code_hub/export.dart';
import 'package:code_hub/getxServices/serviceController.dart';
import 'package:code_hub/home.dart';

//! GetX Services for app during pre-launch
var service = HomeItem(
    title: 'Service',
    subtitle: 'Services using Getx',
    action: () {
      Get.to(Service());
    });

///[Service] UI for the GetX Service
class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //! Calls the Service function
                Get.find<ServiceController>().incrementCounter();
              },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
