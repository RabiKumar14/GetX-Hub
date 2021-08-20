import 'dart:async';
import 'package:code_hub/getxBinding/allControllerBinding.dart';
import 'package:code_hub/getxBinding/binding.dart';
import 'package:code_hub/getxDependancyInjection/dependancyInjectionController.dart';
import 'package:code_hub/getxInternalisation/internalisationData.dart';
import 'package:code_hub/export.dart';
import 'package:code_hub/getxNamedRoutes/namedRoutes.dart';
import 'package:code_hub/getxServices/serviceController.dart';
import 'package:code_hub/home.dart';
import 'package:device_preview/device_preview.dart';

//!Pages List of all Getx Named Routes
List<GetPage> pagesList = [
  GetPage(name: '/', page: () => HomePage()),
  GetPage(
      //!Go to namedRoutes.dart for examples
      name: '/namedRoute',
      page: () => NamedRoutes(),
      transition: Transition.leftToRight,
      transitionDuration: Duration(seconds: 1)),
  GetPage(name: '/page2', page: () => Page2()),
  GetPage(
      //! '/:data' is the variable of a data that is passed to the next screen wherever this route is called
      name: '/page2d/:data',
      page: () => Page2()),
  //! Go to namedRoutes.dart at 'toNamed() to Page 2 with value' for the example
  GetPage(
    name: '/bindingHome',
    page: () => BindingHome(),
    //! Initialising controller binding using named route if initialising when page is opened
    // binding: HomeControllerBinding()
  )
];

Future<void> main() async {
  await initServices();
  //! Initialising controller bindings at the start of the app
  // MyControllerBinding().dependencies();
  runApp(
    // MyApp()
    //! Device Preview package used to show UI on different devices in the emulator
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(),
    ),
  );
}

//! Best for services that are needed before app starts, such as Authentication
Future<void> initServices() async {
  print('starting services');
  await Get.putAsync<ServiceController>(() async => ServiceController());
  print('services started');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//! Instance will be created when app starts even when not in use.
//! If permanent is true, instance will not be disposed after use
    // Get.put(DependancyController(), permanent: true);
//! Instance will be created when it is used
//! If fenix is true, instance is discarded after use and recreated when in use again
    // Get.lazyPut(() => DependancyController(), fenix: true);
//! Will be available permanently throughout the app and created multiple instances
    // Get.create<DependancyController>(() => DependancyController());
//! To perform syncronous operation - Use the DependancyController example
    Get.putAsync<DependancyInjectionController>(
        () async => DependancyInjectionController());

    return GetMaterialApp(
      //! GetX memory management system
      smartManagement: SmartManagement.full,
      //! Initialising the controller bindings globally in the app
      initialBinding: AllControllerBinding(),
      // initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [...pagesList],
      //! Adds the languages
      translations: InternalisationData(),
      //! Detects the local phone language
      locale: Get.deviceLocale,
      // Locale('en', 'UK'),
      //! Assigns the language when assigned langugae fails
      fallbackLocale: Locale('en', 'UK'),
      // locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: SafeArea(
        child: HomePage(),
      ),
      //! Use home & remove initialRoute & getPages when using unNamed Routes
    );
  }
}
