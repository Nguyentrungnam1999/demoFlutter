import 'package:flutter/material.dart';
import 'package:mango_client/configs/constants.dart';

class HeaderApp extends StatelessWidget {
  const HeaderApp({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: size.height / 5,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(55),
              bottomRight: Radius.circular(55))),
      child: Stack(
        children: [
          Row(
            children: [
              Text(
                'Hi UiShopy!',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Spacer(),
              Image.asset(
                'assets/images/logo.png',
                height: 70,
                width: 70,
              )
            ],
          ),
          Positioned(
              // top: 110,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.5))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      suffixIcon: Icon(
                        Icons.search,
                        color: kPrimaryColor,
                      ),
                      hintStyle: TextStyle(color: kPrimaryColor)),
                ),
              ))
        ],
      ),
    );
  }
}
