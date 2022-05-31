import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/Controller.dart';
import 'package:postest7_1915016110_maulana_yusuf/data/constant.dart';

final CounterController control = Get.put(CounterController());

class CrudUser extends StatelessWidget {
  final String email;
  final Function? onUpdate;

  final Function? onDelete;
  final String password;
  CrudUser(this.email, this.password, {this.onUpdate, this.onDelete});
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 250,
          margin: EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Obx(
                () => Container(
                  height: 116,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color:
                        control.switchValue.value ? kBlueColor : kPrimaryColor,
                    boxShadow: [kDefaultShadow],
                  ),
                  child: Container(
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: -10,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 80,
                  width: 100,
                  child: Image.asset(
                    "assets/icons/client.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 70,
                left: -10,
                child: Container(
                  height: 136,
                  width: 300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: kDefaultPadding),
                          child: Text("Email : $email",
                              style: GoogleFonts.poppins(
                                  fontSize: 15, color: Colors.black)),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding),
                        child: Text(
                          "Password : $password",
                          style: GoogleFonts.poppins(
                              fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                if (onUpdate != null) onUpdate!();
              },
              child: Container(
                margin: EdgeInsets.only(top: 60),
                width: 50,
                height: 50,
                child: Image.asset(
                  "assets/icons/edit.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                if (onDelete != null) onDelete!();
              },
              child: Container(
                margin: EdgeInsets.only(right: 15),
                width: 50,
                height: 60,
                child: Image.asset(
                  "assets/icons/delete.png",
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
