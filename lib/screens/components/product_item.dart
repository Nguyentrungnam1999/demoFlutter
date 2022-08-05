import 'package:flutter/material.dart';
import 'package:mango_client/configs/constants.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    required this.img,
    required this.title,
    required this.country,
    required this.price,
    Key? key,
  }) : super(key: key);

  final String img, country, title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Image.asset(
            img,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            width: 160,
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.5)),
                ],
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Row(
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: '$title\n'.toUpperCase(),
                      style: Theme.of(context).textTheme.button),
                  TextSpan(
                      text: country,
                      style: TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                ])),
                Spacer(),
                Text('\$$price', style: Theme.of(context).textTheme.button)
              ],
            ),
          )
        ],
      ),
    );
  }
}
