import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // var counterValue = 0.obs;
  int counterValue = 0;
  TextEditingController amountValue = TextEditingController();
  List historyData = [];
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
    Get.snackbar("Amount Status", "Amount Added",
        snackPosition: SnackPosition.BOTTOM);
    historyData.add({"amount": "${amountValue.text}", "type": "Credit"});
    update();

    print(historyData);
    // counterValue=
  }

  subAmount() {
    print(amountValue.text);
    counterValue = counterValue - int.parse(amountValue.text);
    historyData.add({"amount": "${amountValue.text}", "type": "Debit"});
    print(historyData);

    update();
    // counterValue=
  }
}
