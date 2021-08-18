import 'package:code_hub/Exports/export.dart';

///[Languages] storage of translations
class Languages extends Translations {
  @override
  //! collection of different languages
  Map<String, Map<String, String>> get keys => {
        'en_UK': {'hello': 'Hello'},
        'fr_FR': {'hello': 'Bonjour'},
      };
}
