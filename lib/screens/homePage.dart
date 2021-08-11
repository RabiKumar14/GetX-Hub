import 'package:code_hub/homeData.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Code Hub'),
        ),
        body: ResponsiveBuilder(
          builder: (context, sizingInformation) {
            if (sizingInformation.deviceScreenType == DeviceScreenType.desktop ||
                sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
              return Wrap(
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
            } else {
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
