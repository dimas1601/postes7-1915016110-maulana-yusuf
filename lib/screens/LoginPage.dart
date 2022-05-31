import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postest7_1915016110_maulana_yusuf/screens/DataUser.dart';
import 'package:postest7_1915016110_maulana_yusuf/screens/MainPage.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isHiddenPassword = false;

  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final pass = TextEditingController();
  String _errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 29, top: 67),
                      child: Text("Hello! Welcome back!",
                          style: GoogleFonts.poppins(
                              fontSize: 24, fontWeight: FontWeight.w400)),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 67),
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/icons/icons8-hand-48.png"))),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 29, top: 9),
                  child: Text("Hello again, You’ve been missed!",
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w400)),
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 39,
                    left: 29,
                  ),
                  child: Text(
                    "Email",
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 29, top: 5, right: 43),
                  height: 64,
                  child: Stack(
                    children: [
                      TextFormField(
                        controller: email,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(top: 12, left: 11),
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
                      Container(
                        margin: EdgeInsets.only(left: 13, top: 50),
                        child: Text(
                          _errorMessage,
                          style: TextStyle(color: Colors.red, fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 29,
                  ),
                  child: Text(
                    "Password",
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 29, top: 5, right: 43),
                  height: 64,
                  child: TextFormField(
                    controller: pass,
                    obscureText: !isHiddenPassword,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(top: 12, left: 11),
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
                ),
                Container(
                  margin: EdgeInsets.only(left: 14),
                  child: Row(
                    children: [
                      Checkbox(
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          }),
                      Text(
                        "Remember Me",
                        style: GoogleFonts.poppins(
                            fontSize: 13, fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) {
                            //     return ();
                            //   }),
                            // );
                          });
                        },
                        child: Text(
                          "Forgot Password?",
                          style: GoogleFonts.poppins(
                              color: Color(0xffc70039),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 35, right: 32, top: 23),
                  width: MediaQuery.of(context).size.width - 32,
                  height: 44,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_formKey.currentState!.validate()) {
                          if (email.text == "admin@gmail.com" &&
                              pass.text == "000000") {
                            FirebaseAuth.instance
                                .signInWithEmailAndPassword(
                                    email: email.text, password: pass.text)
                                .then(
                                  (value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) {
                                        return DataUser();
                                      },
                                    ),
                                  ),
                                );
                          }
                          // text in form is  valid

                          FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: email.text, password: pass.text)
                              .then(
                                (value) => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainPage();
                                    },
                                  ),
                                ),
                              );
                        }
                      });
                    },
                    child: Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Text(
                    "Or Login with",
                    style: GoogleFonts.poppins(
                        fontSize: 13, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Row(
                        children: [
                          Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/icons8-facebook-30.png")))),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Facebook",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 6, 20, 6),
                      decoration: BoxDecoration(border: Border.all(width: 1)),
                      child: Row(
                        children: [
                          Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/icons/icons8-google-48.png")))),
                          SizedBox(
                            width: 7,
                          ),
                          Text(
                            "Google",
                            style: GoogleFonts.poppins(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ));
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
