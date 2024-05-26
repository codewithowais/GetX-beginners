import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // var counterValue = 0.obs;
  int counterValue = 0;
  TextEditingController amountValue = TextEditingController();
  // addValue() {
  addValue() {
    // counterValue.value++;
    counterValue++;
    update();
    print(counterValue);
  }

  addAmount() {
    print(amountValue.text);
    counterValue = counterValue + int.parse(amountValue.text);
    update();
    Get.snackbar("Amount Status", "Amount Added",
        snackPosition: SnackPosition.BOTTOM);
    // counterValue=
  }

  subAmount() {
    print(amountValue.text);
    counterValue = counterValue - int.parse(amountValue.text);
    update();
    // counterValue=
  }
}
