import 'package:flutter/material.dart';
import 'package:mango_client/configs/constants.dart';
import 'package:mango_client/screens/components/bottom_item.dart';
import 'package:mango_client/screens/components/header_app.dart';
import 'package:mango_client/screens/components/product_item.dart';
import 'package:mango_client/screens/components/title_more.dart';

class BodyApp extends StatelessWidget {
  const BodyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderApp(size: size),
          TitleWithMore(
            title: 'Recomended',
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductItem(
                      img: 'assets/images/image_1.png',
                      title: 'samantha',
                      country: 'Russia',
                      price: 200),
                  ProductItem(
                      img: 'assets/images/image_2.png',
                      title: 'angelica',
                      country: 'USA',
                      price: 400),
                  ProductItem(
                      img: 'assets/images/image_3.png',
                      title: 'samantha',
                      country: 'Russia',
                      price: 500),
                ],
              )),
          TitleWithMore(
            title: 'Featured Plants',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BottomItem(
                  img: 'assets/images/bottom_img_1.png',
                ),
                BottomItem(
                  img: 'assets/images/bottom_img_2.png',
                ),
                BottomItem(
                  img: 'assets/images/bottom_img_1.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
