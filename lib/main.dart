import 'package:code_hub/export.dart';

//Pages List of all Getx Named Routes
List<GetPage> pagesList = [
  GetPage(name: '/', page: () => HomePage()),
  GetPage(
      name: '/namedRoute', //Name of the route
      page: () => NamedRoutes(), //Route Widget
      transition: Transition.leftToRight, //Transition between screens
      transitionDuration: Duration(seconds: 1)), //Duration of the transition
  //Go to namedRoutes.dart for examples
  GetPage(
      name: '/page2/:data'
      //'/:data' is the variable of a data that is passed to the next screen wherever this route is called
      //Go to namedRoutes.dart at 'toNamed() to Page 2 with value' for the example
      ,
      page: () => Page2()),
];

void main() {
  runApp(
    //Device Preview package used to show UI on different devices in the emulator
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [...pagesList],
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // home: SafeArea(
      //   child: HomePage(),
      // ),
    );
  }
}
