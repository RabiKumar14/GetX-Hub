import 'package:code_hub/home.dart';
import 'package:code_hub/export.dart';

var snackbar = HomeItem(
    title: 'Snackbar',
    subtitle: 'Getx Snackbar that allows customisation.',
    action: () {
      //! GetX Snackbar
      Get.snackbar(
        'Snackbar Title', 'Snackbar Message',
        snackPosition: SnackPosition.BOTTOM,
        // titleText: Text('Customisable Title'),
        // messageText: Text('Customisable Message'),
        colorText: Colors.blue,
        // backgroundColor: Colors.grey,
        borderRadius: 20,
        margin: EdgeInsets.all(20),
        maxWidth: 200,
        animationDuration: Duration(seconds: 2),
        backgroundGradient: LinearGradient(colors: [Colors.red, Colors.green]),
        borderColor: Colors.purple,
        borderWidth: 3,
        boxShadows: [
          BoxShadow(
              color: Colors.yellow,
              offset: Offset(30, 50),
              spreadRadius: 20,
              blurRadius: 10)
        ],
        isDismissible: true,
        dismissDirection: SnackDismissDirection.HORIZONTAL,
        forwardAnimationCurve: Curves.bounceInOut,
        duration: Duration(seconds: 20),
        icon: Icon(
          Icons.today,
          color: Colors.white,
        ),
        shouldIconPulse: true,
        leftBarIndicatorColor: Colors.red,
        mainButton: TextButton(
          onPressed: () {},
          child: Text('Retry'),
        ),
        onTap: (val) {
          print('Clicked');
        },
        //! overlay is broken
// overlayBlur: 5,
// overlayColor: Colors.pink
        padding: EdgeInsets.all(40),
        showProgressIndicator: true,
        progressIndicatorBackgroundColor: Colors.pink,
        progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white),
        reverseAnimationCurve: Curves.bounceInOut,
        snackbarStatus: (val) {
          print(val);
        },
        userInputForm: Form(
          child: TextField(),
        ),
      );
    });
