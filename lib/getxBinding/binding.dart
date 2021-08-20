import 'package:code_hub/export.dart';
import 'package:code_hub/getxBinding/allControllerBinding.dart';
import 'package:code_hub/home.dart';

//! GetX Binding for Controllers
var binding = HomeItem(
    title: 'Binding',
    subtitle: 'GetX Binding for dependancies',
    action: () {
      Get.to(Binding());
    });

//! 1st Page for Binding
class Binding extends StatelessWidget {
  const Binding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              //! Getting the value from the controller instead of storing the value here
              () => Text('Value is ${Get.find<MyController>().count}'),
            ),
            TextButton(
              onPressed: () {
                Get.find<MyController>().increment();
              },
              child: Text('Increment'),
            ),
            TextButton(
              onPressed: () {
                Get.to(BindingHome());

                // Get.toNamed('bindingHome');
                // Get.to(BindingHome(), binding: HomeControllerBinding());
              },
              child: Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}

//! 2nd Page for Binding
class BindingHome extends StatelessWidget {
  const BindingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text('Value is ${Get.find<HomeController>().count}'),
            ),
            TextButton(
              onPressed: () {
                Get.find<HomeController>().increment();
              },
              child: Text('Increment'),
            ),
            TextButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Back'))
          ],
        ),
      ),
    );
  }
}
