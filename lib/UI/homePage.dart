import 'package:code_hub/Data/homeData.dart';
import 'package:code_hub/Exports/export.dart';
import 'package:responsive_builder/responsive_builder.dart';

//! Main Page of the app
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Code Hub'),
        ),
        //! Responsive Builder that checks the screen type and applies the specified page
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            //! Page for desktop and table screen sizes
            if (sizingInformation.deviceScreenType ==
                    DeviceScreenType.desktop ||
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
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
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
      ),
    );
  }
}
