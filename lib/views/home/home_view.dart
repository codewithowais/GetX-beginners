import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementdummy/components/text_component.dart';
import 'package:statemanagementdummy/controllers/home/home_controller.dart';
import 'package:statemanagementdummy/views/add/add_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeControl = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print("Calling Build Method");
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<HomeController>(builder: (cahomeControlca) {
              return Center(
                  child: TextComponent(
                      textComponentValue: "${cahomeControlca.counterValue}"));
            }),

            // GetX<HomeController>(builder: (cahomeControlca) {
            //   return Center(
            //       child: TextComponent(
            //    textComponentValue: "${cahomeControlca.counterValue.value}",
            //   ));
            // }),
            // Obx(() => Center(
            //         child: TextComponent(
            //       textComponentValue:"${homeControl.counterValue.value}",
            //     ))),
            ElevatedButton(
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AddView()));
                  // Get.off(() => AddView());
                  // Get.offAll(() => AddView());
                  Get.to(() => AddView());
                  // Get.offUntil( AddView());
                },
                child: Text("Navigate"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          homeControl.addValue();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
