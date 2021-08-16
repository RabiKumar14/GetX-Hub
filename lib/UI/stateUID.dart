import 'package:code_hub/Controls/stateUIDControl.dart';
import 'package:code_hub/Exports/export.dart';

class UIDState extends StatelessWidget {
  const UIDState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! Calling the UID Controller
    UIDController uidController = Get.put(UIDController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Controller with UID assigned
            GetBuilder<UIDController>(
              id: 'txtCount',
              builder: (controller) {
                return Text('Value is ${controller.age}');
              },
            ),
            //! Controller with no UID
            GetBuilder<UIDController>(
              builder: (controller) {
                return Text('Value is ${controller.age}');
              },
            ),
            TextButton(
                onPressed: () => uidController.increment(),
                child: Text('Increment'))
          ],
        ),
      ),
    );
  }
}
