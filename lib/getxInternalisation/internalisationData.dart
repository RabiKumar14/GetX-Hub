import 'package:code_hub/export.dart';

///[InternalisationData] storage of translations
class InternalisationData extends Translations {
  @override
  //! collection of different languages
  Map<String, Map<String, String>> get keys => {
        'en_UK': {'hello': 'Hello'},
        'fr_FR': {'hello': 'Bonjour'},
      };
}
