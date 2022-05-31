import 'package:flutter/material.dart';
import 'package:postest7_1915016110_maulana_yusuf/data/constant.dart';

class ProductPoster extends StatelessWidget {
  const ProductPoster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // buat background warna putih
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
              height: size.width * 0.8,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // buat lingkaran di belakang gambar
                  Container(
                    height: size.width * 0.7,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/Item_1.png",
                    height: size.width * 0.75,
                    width: size.width * 0.75,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text("Classic Leather Arm Chair",
                style: TextStyle(fontSize: 18)),
          ),
          Text(
            "\$56",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class ProductPoster2 extends StatelessWidget {
  const ProductPoster2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // buat background warna putih
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
              height: size.width * 0.8,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // buat lingkaran di belakang gambar
                  Container(
                    height: size.width * 0.7,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/Item_2.png",
                    height: size.width * 0.75,
                    width: size.width * 0.75,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child:
                Text("Poppy Plastic Tub Chair", style: TextStyle(fontSize: 18)),
          ),
          Text(
            "\$68",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class ProductPoster3 extends StatelessWidget {
  const ProductPoster3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // buat background warna putih
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
              height: size.width * 0.8,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // buat lingkaran di belakang gambar
                  Container(
                    height: size.width * 0.7,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/Item_3.png",
                    height: size.width * 0.75,
                    width: size.width * 0.75,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text("Bar Stool Chair", style: TextStyle(fontSize: 18)),
          ),
          Text(
            "\$39",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class ProductPoster4 extends StatelessWidget {
  const ProductPoster4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // buat background warna putih
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
              height: size.width * 0.8,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // buat lingkaran di belakang gambar
                  Container(
                    height: size.width * 0.7,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/Item_4.png",
                    height: size.width * 0.75,
                    width: size.width * 0.75,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text("Dolly Arm Chair", style: TextStyle(fontSize: 18)),
          ),
          Text(
            "\$21",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class ProductPoster5 extends StatelessWidget {
  const ProductPoster5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // buat background warna putih
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
              height: size.width * 0.8,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  // buat lingkaran di belakang gambar
                  Container(
                    height: size.width * 0.7,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                  ),
                  Image.asset(
                    "assets/images/Item_5.png",
                    height: size.width * 0.75,
                    width: size.width * 0.75,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text("Curve Arm Chair", style: TextStyle(fontSize: 18)),
          ),
          Text(
            "\$27",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: kPrimaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
