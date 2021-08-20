import 'package:code_hub/getxControllerStateGetBuilderUID/stateGetBuilderUIDController.dart';
import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';

//! Getx Controller State Management using Unique ID
var stateGetBuilderUID = HomeItem(
    title: 'UID State Management',
    subtitle: 'Getx Controller using Unique ID to manage State',
    action: () {
      Get.to(StateGetBuilderUID());
    });

///[StateGetBuilderUID] GetX State Management using Controller & Unique ID page
class StateGetBuilderUID extends StatelessWidget {
  const StateGetBuilderUID({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //! Calling the UID Controller
    StateGetBuilderUIDController uidController =
        Get.put(StateGetBuilderUIDController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Controller with UID assigned
            GetBuilder<StateGetBuilderUIDController>(
              id: 'txtCount',
              builder: (controller) {
                return Text('Value is ${controller.age}');
              },
            ),
            //! Controller with no UID
            GetBuilder<StateGetBuilderUIDController>(
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
