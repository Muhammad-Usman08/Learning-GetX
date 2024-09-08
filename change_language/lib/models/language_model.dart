import 'package:get/get_navigation/src/root/internacionalization.dart';

class LanguageModel extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_Us': {
          'message': 'What is your name?',
          'name': 'Muhammad Usman',
        },
        'ur_PK': {
          'message': 'آپ کا نام کیا ہے؟',
          'name': 'محمد عثمان',
        },
        'hi_IND': {
          'message': 'आपका क्या नाम है?',
          'name': 'मुहम्मद उस्मान',
        },
      };
}
