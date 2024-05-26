import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemanagementdummy/components/text_component.dart';
import 'package:statemanagementdummy/controllers/home/home_controller.dart';
import 'package:statemanagementdummy/utils/color_constraints.dart';
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
            // simple statemanagement
            GetBuilder<HomeController>(builder: (cahomeControlca) {
              return Center(
                  child: TextComponent(
                      textComponentValue: "${cahomeControlca.counterValue}"));
            }),
            // reactive statemanagement
            TextField(
              controller: homeControl.amountValue,
            ),
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
                onPressed: () async {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AddView()));
                  // Get.off(() => AddView());
                  // Get.offAll(() => AddView());
                  // var abc =
                  //     await Get.to(() => AddView(), arguments: "Shahzeb naqvi");
                  // print(abc);
                  // Get.offUntil( AddView());
                  homeControl.addAmount();
                },
                child: Text("credit")),
            ElevatedButton(
                onPressed: () async {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => AddView()));
                  // Get.off(() => AddView());
                  // Get.offAll(() => AddView());
                  // var abc =
                  //     await Get.to(() => AddView(), arguments: "Shahzeb naqvi");
                  // print(abc);
                  // Get.offUntil( AddView());
                  homeControl.subAmount();
                },
                child: Text("Debit")),
            GetBuilder<HomeController>(builder: (contexta) {
              return ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: homeControl.historyData.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title:
                          Text("${homeControl.historyData[index]["amount"]}"),
                      trailing:
                          homeControl.historyData[index]["type"] == "Debit"
                              ? Icon(
                                  Icons.arrow_downward_outlined,
                                  color: ColorContraint.debitColor,
                                )
                              : Icon(
                                  Icons.arrow_upward_outlined,
                                  color: ColorContraint.creditColor,
                                ),
                    );
                  });
            })
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
