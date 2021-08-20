import 'package:code_hub/getxDependancyInjection/dependancyInjectionController.dart';
import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';

//! GetX Dependancy Injection that controls memory allocation
var dependancyInjection = HomeItem(
    title: 'Dependancy Injection',
    subtitle: 'Memory allocation for Controllers using Getx',
    action: () {
      Get.to(DependancyInjection());
    });

///[DependancyInjection] UI for the dependancy injection example
class DependancyInjection extends StatelessWidget {
  const DependancyInjection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //! Calls the controller function
                Get.find<DependancyInjectionController>().incrementCounter();
              },
              child: Text('Click Me'),
            )
          ],
        ),
      ),
    );
  }
}
