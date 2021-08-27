import 'package:code_hub/customPainterUI/painterUI.dart';
import 'package:code_hub/export.dart';
import 'package:code_hub/firebaseAuthWithGetX/loginFirebase.dart';
import 'package:code_hub/getxBinding/binding.dart';
import 'package:code_hub/getxBottomSheet/bottomSheet.dart';
import 'package:code_hub/getxDependancyInjection/dependancyInjection.dart';
import 'package:code_hub/getxDialog/dialog.dart';
import 'package:code_hub/getxGetView/getview.dart';
import 'package:code_hub/getxInternalisation/internalisation.dart';
import 'package:code_hub/getxNamedRoutes/namedRoutes.dart';
import 'package:code_hub/getxServices/service.dart';
import 'package:code_hub/getxStorageAndEmailValidation/StorageAndEmailValidation.dart';
import 'package:code_hub/getxUnnamedRoutes/unnamedRoutes.dart';
import 'package:code_hub/getxWorkers/workers.dart';
import 'package:code_hub/getxControllerStateObx/stateObx.dart';
import 'package:code_hub/getxControllerStateGetBuilderUID/stateGetBuilderUID.dart';
import 'package:code_hub/getxSnackBar/snackbar.dart';
import 'package:responsive_builder/responsive_builder.dart';

///[HomeItem] Required parameters of the home item
class HomeItem {
  final String title;
  final String subtitle;
  final VoidCallback action;

  HomeItem({
    required this.title,
    required this.subtitle,
    required this.action,
  });
}

//! Home Page items list
List<HomeItem> homeList = [
  snackbar,
  dialog,
  bottomsheet,
  unnamedRoutes,
  namedRoutes,
  stateObx,
  stateGetBuilderUID,
  workers,
  internalisation,
  dependancyInjection,
  service,
  binding,
  storageAndEmailValidation,
  getviewPage,
  customPainter,
  // todoApp
];

///[HomePage] Main page of the app
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Code Hub'),
      ),
      //! Responsive Builder that checks the screen type and applies the specified page
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          //! Page for desktop and table screen sizes
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
              sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return Wrap(
              //! Uses the homeList list to make the widget based on the length of the list
              children: homeList.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: TextButton(
                    onPressed: e.action,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Text(
                            e.title,
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                          Text(
                            e.subtitle,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }).toList(),
            );
          }
          //! Page for mobile screen size and below
          else {
            return ListView(
              children: homeList.map((e) {
                return ListTile(
                  title: Text(
                    e.title,
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  trailing: Text(
                    e.subtitle,
                    style: TextStyle(fontSize: 10),
                  ),
                  onTap: e.action,
                );
              }).toList(),
            );
          }
        },
      ),
    );
  }
}
