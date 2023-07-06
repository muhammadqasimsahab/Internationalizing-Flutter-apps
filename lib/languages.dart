import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {'message': 'what is your name', 'name': 'Qasim Khan'},
        'ur_PK': {'message': 'آپ کا نام کیا ہے', 'name': 'قاسم خان'},
        'ar_UAE': {'message': 'ما اسمك؟', 'name': 'قاسم خان'}
      };
}
