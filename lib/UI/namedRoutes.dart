import 'package:code_hub/Exports/export.dart';
import 'package:code_hub/UI/homePage.dart';

///[NamedRoutes] Named Routing Page, should only be using in Web
class NamedRoutes extends StatelessWidget {
  const NamedRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Named Routes'),
      ),
      body: ListView(
        children: [
          //! Named Routing with option to return to prev screen
          ListTile(
            title: Text('toNamed() to Page 2'),
            trailing: Text('With option to return to prev screen'),
            onTap: () {
              Get.toNamed('/page2');
            },
          ),
          //! Named Routing with no option to return to prev screen
          ListTile(
            title: Text('offNamed() to Page 2'),
            trailing: Text('No option to return to prev screen'),
            onTap: () {
              Get.offNamed('/page2');
            },
          ),
          //! Named Routing with no option to return any prev screens
          ListTile(
            title: Text('offAllNamed() to Page 2'),
            trailing: Text('No option to return to all prev screen'),
            onTap: () {
              Get.offAllNamed('/page2');
            },
          ),
          //! Named Routing with option to pass value to the next screen
          ListTile(
            title: Text('toNamed() to Page 2 with value'),
            trailing: Text('Passing value to next screen'),
            onTap: () {
              Get.toNamed('/page2d/newdata1234');
            },
          )
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('If you cannot return, press here'),
            onTap: () {
              Get.offAll(
                HomePage(),
              );
            },
          ),
          //! Gets the value from the prev screen
          ListTile(
            title: Text('${Get.parameters['data']}'),
          )
        ],
      ),
    );
  }
}
