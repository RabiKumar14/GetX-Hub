import '../export.dart';

class GetXAnalogClock extends StatelessWidget {
  const GetXAnalogClock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
      themeMode: ThemeService().getThemeMode(),
    );
  }
}
