import 'package:code_hub/customResponsiveBuilder/screenTypes.dart';
import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';
import 'package:code_hub/portfolio/bodyPage.dart';
import 'package:code_hub/portfolio/constants.dart';
import 'package:code_hub/portfolio/drawerPage.dart';

final portfolio = HomeItem(
    title: 'Portfolio',
    subtitle: 'Portfolio UI Example',
    action: () {
      Get.to(PortfolioPage());
    });

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomResponsive.desktopBool(context) == true
          ? null
          : AppBar(
              backgroundColor: bgColor,
              automaticallyImplyLeading:
                  CustomResponsive.desktopBool(context) == true ? false : true,
            ),
      drawer: ProfileWidget(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              CustomResponsive.desktopBool(context) == false
                  ? Container()
                  : Expanded(
                      child: ProfileWidget(),
                      flex: 2,
                    ),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: defPadding),
                    child: Column(
                      children: [
                        BannerWidget(),
                        NumbersWidget(),
                        Text(
                          'My Projects',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: defPadding,
                        ),
                        CustomResponsive.desktopBool(context)
                            ? ProjectWidget()
                            : CustomResponsive.tabletLandscapeBool(context)
                                ? ProjectWidget(
                                    childAspextRatio: 1.3,
                                  )
                                : ProjectWidget(
                                    childAspextRatio: 1.2,
                                    crossAxisCount: 2,
                                  ),
                        RecommendationWidget()
                      ],
                    ),
                  ),
                ),
                flex: 7,
              )
            ],
          ),
        ),
      ),
    );
  }
}
