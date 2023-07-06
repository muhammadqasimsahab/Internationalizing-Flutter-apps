import 'package:get/get.dart';

class SwitchController extends GetxController {
  RxBool on = false.obs;
  void toggle() => on.value = on.value ? false : true;
}
