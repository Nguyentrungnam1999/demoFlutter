import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class FooterApp extends StatefulWidget {
  const FooterApp({Key? key}) : super(key: key);

  @override
  State<FooterApp> createState() => _FooterAppState();
}

class _FooterAppState extends State<FooterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //You should use `Scaffold` if you have `TextField` in body.
      //Otherwise on focus your `TextField` won`t scroll when keyboard popup.
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            //Header Container
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Header"),
            ),

            //Body Container

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.red,
                      height: 200.0,
                      alignment: Alignment.center,
                      child: Text("Content 1"),
                    ),
                    Container(
                      color: Colors.green,
                      height: 300.0,
                      alignment: Alignment.center,
                      child: Text("Content 1"),
                    ),
                    //TextField nearly at bottom
                    TextField(
                      decoration: InputDecoration(hintText: "Enter Text Here"),
                    ),
                  ],
                ),
              ),
            ),

            //Footer Container
            //Here you will get unexpected behaviour when keyboard pops-up.
            //So its better to use `bottomNavigationBar` to avoid this.
            Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("Footer"),
            ),
          ],
        ),
      ),
    );
  }
}
