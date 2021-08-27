import 'package:code_hub/customPainterUI/customPainter.dart';
import 'package:code_hub/home.dart';

import '../export.dart';

var customPainter = HomeItem(
    title: 'Custom Painter UI',
    subtitle: 'Sign In Page with custom painted background',
    action: () {
      Get.to(PainterUI());
    });

class PainterUI extends StatefulWidget {
  const PainterUI({Key? key}) : super(key: key);

  @override
  _PainterUIState createState() => _PainterUIState();
}

class _PainterUIState extends State<PainterUI>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox.expand(
            child: CustomPaint(
              painter: BackgroundPainter(_controller.view),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    _controller.forward();
                  },
                  child: Text(
                    'Forward',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _controller.reverse();
                  },
                  child: Text(
                    'Reverse',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
