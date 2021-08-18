import 'package:code_hub/Controls/getxWorkerControl.dart';
import 'package:code_hub/Exports/export.dart';

///[GetXWorkers] GetX Workers page
// ignore: must_be_immutable
class GetXWorkers extends StatelessWidget {
  WorkerController workerController = Get.put(WorkerController());

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
