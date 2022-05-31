import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/Controller.dart';
import 'package:postest7_1915016110_maulana_yusuf/components/CrudUser.dart';
import 'package:postest7_1915016110_maulana_yusuf/data/constant.dart';
import 'package:postest7_1915016110_maulana_yusuf/screens/LoginPage.dart';

class DataUser extends StatefulWidget {
  DataUser({Key? key}) : super(key: key);

  @override
  State<DataUser> createState() => _DataUserState();
}

class _DataUserState extends State<DataUser> {
  String _errorMessage = "";
  final TextEditingController emailCtrl = TextEditingController();
  bool isHiddenPassword = false;
  final TextEditingController passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final myCounterController = Get.put(CounterController());
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference users = firestore.collection('users');
    return Scaffold(
      backgroundColor: kBlueColor,

      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(left: kDefaultPadding),
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Login()));
          },
        ),
        centerTitle: true,
        title: Text("Dashboard"),
        flexibleSpace: Obx(() => Container(
              color: myCounterController.switchValue.value
                  ? kPrimaryColor
                  : kBlueColor,
            )),
      ),
      // backgroundColor: kPrimaryColor,
      body: Stack(
        children: [
          ListView(
            children: [
              StreamBuilder<QuerySnapshot>(
                stream: users.snapshots(),
                builder: (_, snapshot) {
                  return (snapshot.hasData)
                      ? Column(
                          children: snapshot.data!.docs
                              .map(
                                (e) => CrudUser(
                                  e.get('email'),
                                  e.get('pass'),
                                  onUpdate: () {
                                    users.doc(e.id).update({
                                      'email': emailCtrl.text,
                                      'pass': passwordCtrl.text
                                    });
                                  },
                                  onDelete: () {
                                    users.doc(e.id).delete();
                                  },
                                ),
                              )
                              .toList(),
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              ),
              SizedBox(height: 150)
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      offset: Offset(-5, 0),
                      blurRadius: 15,
                      spreadRadius: 3)
                ]),
                width: double.infinity,
                height: 180,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 160,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextFormField(
                            controller: emailCtrl,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "";
                              }
                              return null;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(top: 12, left: 11),
                              hintText: "Contoh: yusuf@gmail.com",
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)),
                            ),
                            onChanged: (val) {
                              validateEmail(val);
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: passwordCtrl,
                            obscureText: !isHiddenPassword,
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.only(top: 12, left: 11),
                                hintText: "Password",
                                hintStyle: GoogleFonts.poppins(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isHiddenPassword = !isHiddenPassword;
                                    });
                                  },
                                  icon: isHiddenPassword
                                      ? Icon(Icons.visibility)
                                      : Icon(Icons.visibility_off),
                                )),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password tidak boleh kosong';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 130,
                      width: 130,
                      padding: const EdgeInsets.fromLTRB(15, 5, 0, 5),
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              )),
                          child: Text('Create',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400)),
                          onPressed: () {
                            try {
                              FirebaseAuth.instance
                                  .createUserWithEmailAndPassword(
                                      email: emailCtrl.text,
                                      password: passwordCtrl.text);
                              users.add({
                                'email': emailCtrl.text,
                                'pass': passwordCtrl.text,
                              });
                            } catch (e) {
                              throw (e.toString());
                            }
                          }),
                    )
                  ],
                ),
                //
              )),
        ],
      ),
    );
  }

  void validateEmail(String val) {
    if (val.isEmpty) {
      setState(() {
        _errorMessage = "Email can not be empty";
      });
    } else if (!EmailValidator.validate(val, true)) {
      setState(() {
        _errorMessage = "Invalid Email Address";
      });
    } else {
      setState(() {
        _errorMessage = "";
      });
    }
  }
}
