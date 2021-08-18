import 'package:code_hub/Exports/export.dart';
import 'package:code_hub/UI/homePage.dart';

///[UnnamedRoutes] Unamed Routing Page - Most suitable when not using web
class UnnamedRoutes extends StatelessWidget {
  const UnnamedRoutes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Route Page'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('to() to Page 1'),
            trailing: Text('Normal routing with option to return'),
            onTap: () {
              //! Normal routing option with option to go back to prev screen
              Get.to(Page1(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  duration: Duration(seconds: 2),
                  curve: Curves.bounceInOut);
            },
          ),
          ListTile(
            title: Text('off() to Page 1'),
            trailing: Text('No option to return to prev screen'),
            onTap: () {
              //! Routing option with no option to return to prev screen but able to go back to the one before
              Get.off(
                Page1(),
              );
            },
          ),
          ListTile(
            title: Text('offAll() to Page 1'),
            trailing: Text('No Option to return to all prev screens'),
            onTap: () {
              //! Routing option with no option to return to any of the prev screens before this
              Get.offAll(
                Page1(),
              );
            },
          ),
          ListTile(
            title: Text('to() with argument passed to next page'),
            onTap: () {
              //! Routing option to pass data from current screen to the next screen
              Get.to(Page1(), arguments: 'Data from Prev Page');
              //* Linked to 2nd ListTile in Page 1
            },
          ),
          ListTile(
            title: Text(
                'to() with sending argument to prev screen (Use Back with data in Page 1)'),
            //! Routing option to pass data from the current screen to the prev screen
            onTap: () async {
              var data = await Get.to(
                Page1(),
              );
              print('$data');
              //* Linked to  last ListTile in Page 1
            },
          )
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
      ),
      body: ListView(
        children: [
          //! Back Routing Option
          ListTile(
            title: Text('Back'),
            onTap: () {
              Get.back();
            },
          ),
          //! Receives data from the prev screen
          ListTile(
            title: Text('${Get.arguments}'),
          ),
          //! Option to go back to start screen when prev screens cannot be accessed
          ListTile(
            title: Text('If you cannot return, press here'),
            onTap: () {
              Get.offAll(
                HomePage(),
              );
            },
          ),
          //! Sends the specified data to prev screen
          ListTile(
            title: Text('Back with data to prev screen'),
            onTap: () {
              Get.back(result: 'Data passed');
            },
          ),
        ],
      ),
    );
  }
}
