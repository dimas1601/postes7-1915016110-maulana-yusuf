import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/Controller.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/Drawer.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/SearchBox.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/product_card.dart';
import 'package:postest7_1915016110_maulana_yusuf/data/constant.dart';
import 'package:postest7_1915016110_maulana_yusuf/screens/DetailPage.dart';

class MainPage extends StatelessWidget {
  MainPage({Key? key}) : super(key: key);
  final myCounterController = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dashboard"),
        flexibleSpace: Obx(() => Container(
              color: myCounterController.switchValue.value
                  ? kPrimaryColor
                  : kBlueColor,
            )),
        actions: [
          Obx(
            () => Switch(
              activeColor: Colors.white,
              value: myCounterController.switchValue.value,
              onChanged: (newValue) {
                myCounterController.switchValue.value = newValue;
              },
            ),
          ),
        ],
      ),
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Obx(
          () => Container(
            color: myCounterController.switchValue.value
                ? kPrimaryColor
                : kBlueColor,
            child: Column(
              children: [
                // searching
                SearchBox(onChanged: (value) {}),
                SizedBox(height: kDefaultPadding / 2),
                // Background putih
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 70),
                        decoration: BoxDecoration(
                          color: kBackgroundColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                      ),
                      // tampilin data
                      ListView(
                        children: [
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return DetailPage();
                                  }),
                                ),
                              );
                            }),
                            child: ProductCard(),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return DetailPage2();
                                  }),
                                ),
                              );
                            }),
                            child: ProductCard2(),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return DetailPage3();
                                  }),
                                ),
                              );
                            }),
                            child: ProductCard3(),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return DetailPage4();
                                  }),
                                ),
                              );
                            }),
                            child: ProductCard4(),
                          ),
                          GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) {
                                    return DetailPage5();
                                  }),
                                ),
                              );
                            }),
                            child: ProductCard5(),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
