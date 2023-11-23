import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'greeting': 'Hello World',
          'welcome_text': 'Welcome to my channel @name'
        },
        'mm_MM': {
          'greeting': 'မင်္ဂလာပါ ကမ္ဘာကြီး',
          'welcome_text': 'ကျွုန်ပ် ချန်နယ်မှ ကြိုဆိုပါတယ် @name'
        },
        'cn_CN': {
          'greeting': 'ni houng',
          'welcome_text': 'ajdsflk j;al fj;l dafj ;kjasf; jas;dlfkj'
        },
      };
}
