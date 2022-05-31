import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/Controller.dart';
import 'package:postest7_1915016110_maulana_yusuf/data/constant.dart';

class ChatandAddToCart extends StatelessWidget {
  ChatandAddToCart({Key? key}) : super(key: key);
  final CounterController controller = Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.all(kDefaultPadding),
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding,
          vertical: kDefaultPadding / 2,
        ),
        decoration: BoxDecoration(
            color: controller.switchValue.value ? kBlueColor : kPrimaryColor,
            borderRadius: BorderRadius.circular(30)),
        child: Row(
          children: [
            SvgPicture.asset("assets/icons/chat.svg"),
            SizedBox(width: kDefaultPadding / 2),
            Text(
              "Chat",
              style: TextStyle(color: Colors.white),
            ),
            Spacer(),
            Obx(
              () => ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: controller.switchValue.value
                          ? kBlueColor
                          : kPrimaryColor),
                  onPressed: () {
                    CoolAlert.show(
                      context: context,
                      type: CoolAlertType.success,
                      title: "Berhasil",
                      text: "Barang berhasil dimasukkan ke Keranjang",
                      confirmBtnText: 'Submit',
                    );
                  },
                  icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
                  label: Text(
                    "Add to Cart",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
