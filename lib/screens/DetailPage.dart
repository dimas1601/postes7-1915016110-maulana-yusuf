import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/ChatandAddToChart.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/Controller.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/ProductPoster.dart';
import 'package:postest7_1915016110_maulana_yusuf/data/constant.dart';

final CounterController controller = Get.put(CounterController());

class DetailPage extends StatelessWidget {
  DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Back".toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  title: "Berhasil",
                  text: "Barang berhasil dimasukkan ke Keranjang",
                  confirmBtnText: 'Submit',
                );
              },
              icon: SvgPicture.asset("assets/icons/cart_with_item.svg"))
        ],
      ),
      body: Obx(
        () => Container(
          color: controller.switchValue.value ? kPrimaryColor : kBlueColor,
          child: ListView(
            children: [
              Column(
                children: [
                  ProductPoster(),
                  ChatandAddToCart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage2 extends StatelessWidget {
  const DetailPage2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Back".toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  title: "Berhasil",
                  text: "Barang berhasil dimasukkan ke Keranjang",
                  confirmBtnText: 'Submit',
                );
              },
              icon: SvgPicture.asset("assets/icons/cart_with_item.svg"))
        ],
      ),
      body: Obx(
        () => Container(
          color: controller.switchValue.value ? kPrimaryColor : kBlueColor,
          child: ListView(
            children: [
              Column(
                children: [
                  ProductPoster2(),
                  ChatandAddToCart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage3 extends StatelessWidget {
  const DetailPage3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Back".toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  title: "Berhasil",
                  text: "Barang berhasil dimasukkan ke Keranjang",
                  confirmBtnText: 'Submit',
                );
              },
              icon: SvgPicture.asset("assets/icons/cart_with_item.svg"))
        ],
      ),
      body: Obx(
        () => Container(
          color: controller.switchValue.value ? kPrimaryColor : kBlueColor,
          child: ListView(
            children: [
              Column(
                children: [
                  ProductPoster3(),
                  ChatandAddToCart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage4 extends StatelessWidget {
  const DetailPage4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Back".toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  title: "Berhasil",
                  text: "Barang berhasil dimasukkan ke Keranjang",
                  confirmBtnText: 'Submit',
                );
              },
              icon: SvgPicture.asset("assets/icons/cart_with_item.svg"))
        ],
      ),
      body: Obx(
        () => Container(
          color: controller.switchValue.value ? kPrimaryColor : kBlueColor,
          child: ListView(
            children: [
              Column(
                children: [
                  ProductPoster4(),
                  ChatandAddToCart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailPage5 extends StatelessWidget {
  const DetailPage5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/back.svg"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Back".toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {
                CoolAlert.show(
                  context: context,
                  type: CoolAlertType.success,
                  title: "Berhasil",
                  text: "Barang berhasil dimasukkan ke Keranjang",
                  confirmBtnText: 'Submit',
                );
              },
              icon: SvgPicture.asset("assets/icons/cart_with_item.svg"))
        ],
      ),
      body: Obx(
        () => Container(
          color: controller.switchValue.value ? kPrimaryColor : kBlueColor,
          child: ListView(
            children: [
              Column(
                children: [
                  ProductPoster5(),
                  ChatandAddToCart(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
