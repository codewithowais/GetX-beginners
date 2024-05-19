import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementdummy/components/text_component.dart';
import 'package:statemanagementdummy/controllers/home/home_controller.dart';

class AddView extends StatelessWidget {
  AddView({super.key});
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          TextComponent(textComponentValue: "${homeControl.counterValue}"),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("back from this"))
        ],
      )),
    );
  }
}
