import 'package:code_hub/home.dart';
import 'package:code_hub/productPage/widgets/bottomPart.dart';
import 'package:code_hub/productPage/widgets/topPart.dart';

import '../export.dart';
import 'constantData.dart';

//todo Fix UI

var productPage = HomeItem(
    title: 'Product',
    subtitle: 'Product Page UI',
    action: () {
      Get.to(ProductPage());
    });

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF696D77), Color(0xFF292C36)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: screenAwareSize(20.0, context),
            ),
            onPressed: () {},
          ),
          title: Text("Energy Cloud",
              style: TextStyle(
                color: Colors.white,
                fontSize: screenAwareSize(18.0, context),
              )),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                size: screenAwareSize(20.0, context),
                color: Colors.white,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ProductScreenTopPart(),
              ProductScreenBottomPart()
            ],
          ),
        ),
      ),
    );
  }
}
