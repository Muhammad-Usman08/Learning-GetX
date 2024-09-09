import 'package:get/get.dart';

class OpactityModel extends GetxController {
  RxDouble opacity = .1.obs;

  changeOpacity(double value) {
    opacity.value = value;
  }
}
