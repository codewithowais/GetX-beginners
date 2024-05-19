import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementdummy/controllers/home/home_controller.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("Calling Build Method");
    return Scaffold(
      body: GetBuilder<HomeController>(builder: (cahomeControlca) {
        return Center(
            child: Text(
          "${cahomeControlca.counterValue}",
          style: TextStyle(fontSize: 33),
        ));
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.addValue();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
