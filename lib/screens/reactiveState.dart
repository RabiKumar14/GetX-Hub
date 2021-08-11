import 'package:code_hub/export.dart';

// final name = RxString('');
// final isLogged = RxBool(false);
//  final count = RxInt(0);
// final balance = RxDouble(0);
// final items = RxList([]);
// final myMap = RxMap({});

class RState extends StatelessWidget {
  late RxInt count = 0.obs;
  late RxBool log = false.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() {
                return Text(
                  'Count value is $count' + '\nLogged in? $log',
                );
              }),
              TextButton(
                  onPressed: () {
                    increment();
                    log == RxBool(false)
                        ? log = RxBool(true)
                        : log = RxBool(false);
                  },
                  child: Text('Increment')),
            ],
          ),
        ),
      ),
    );
  }
}
