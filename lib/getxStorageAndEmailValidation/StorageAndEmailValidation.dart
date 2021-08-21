import 'package:code_hub/export.dart';
import 'package:code_hub/home.dart';
import 'package:get_storage/get_storage.dart';

//! WARNING - GetX Email Validator is not good

var storageAndEmailValidation = HomeItem(
    title: 'Storage & Email Validation',
    subtitle: 'Using GetX Storage and GetX Util for email validation',
    action: () {
      Get.to(
        StorageAndEmailValidation(),
      );
    });

//! Creates a named storage
// GetStorage g = GetStorage('MyStorage');
// await GetStorage.init('MyStorage');

///[StorageAndEmailValidation] Storage and email validation using GetX
class StorageAndEmailValidation extends StatelessWidget {
  final emailEditingController = TextEditingController();

  final storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(14),
              child: TextField(
                //! Assigns the controller tot he text field
                controller: emailEditingController,
              ),
            ),
            TextButton(
              child: Text('Input Email'),
              onPressed: () {
                //! Writes the data into the storage
                if (GetUtils.isEmail(emailEditingController.text)) {
                  storage.write('email', emailEditingController.text);
                } else {
                  Get.snackbar('Incorrect Email', 'Incorrect email format',
                      snackPosition: SnackPosition.BOTTOM);
                }
              },
            ),
            TextButton(
              onPressed: () {
                //! Reads the data from the storage of the tagged key
                print('Email is ${storage.read('email')}');
              },
              child: Text('Read'),
            ),
            TextButton(
              onPressed: () {
                //! Removes the data of the tagged key
                // storage.remove('email');

                //! Erases all the data in the storage
                storage.erase();
              },
              child: Text('Delete Email'),
            ),
          ],
        ),
      ),
    );
  }
}
