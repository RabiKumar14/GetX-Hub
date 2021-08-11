import 'package:code_hub/dataControl/name.dart';
import 'package:code_hub/export.dart';

// ignore: must_be_immutable
class StateMng extends StatelessWidget {
  var name = Name();

  final nameClass = Name(name2: 'Tom', age2: 18).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return Text('Name is' +
                  // '${name.name1.value} +'
                  '\n' +
                  '${nameClass.value.name2}');
            }),
            TextButton(
              onPressed: () {
                // name.name1.value = name.name1.value.toUpperCase();

                nameClass.update((nameClass) {
                  nameClass!.name2 = nameClass.name2.toUpperCase();
                });
              },
              child: Text('Upper'),
            )
          ],
        ),
      ),
    );
  }
}
