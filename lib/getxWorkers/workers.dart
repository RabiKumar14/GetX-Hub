import 'package:code_hub/getxWorkers/workersController.dart';
import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';

//! GetX Workers & what they do
var workers = HomeItem(
    title: 'GetX Workers',
    subtitle: 'List of GetX Workers',
    action: () {
      Get.to(Workers());
    });

///[Workers] GetX Workers page
class Workers extends StatelessWidget {
  final WorkerController workerController = Get.put(WorkerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => workerController.increment(),
              child: Text('Increment'),
            ),
            TextField(
              //! checks for value change in textfield
              onChanged: (val) {
                workerController.increment();
              },
            )
          ],
        ),
      ),
    );
  }
}
