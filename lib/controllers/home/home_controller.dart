import 'package:get/get.dart';

class HomeController extends GetxController {
  // var counterValue = 0.obs;
  var counterValue = 0;

  // addValue() {
  addValue() {
    // counterValue.value++;
    counterValue++;
    update();
    print(counterValue);
  }
}
