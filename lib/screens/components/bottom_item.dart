import 'package:flutter/material.dart';

class BottomItem extends StatelessWidget {
  const BottomItem({
    required this.img,
    Key? key,
  }) : super(key: key);
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(
          img,
          fit: BoxFit.fill,
          width: 280,
          height: 187,
        ));
  }
}
