import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MaterialApp(home: HomePage()),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    // double screen = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 50),
                child: Center(
                  child: Image.network(
                    "https://login.mangoforsalon.com/Content/logo/mangoforsalon.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                  ),
                ),
              ),
              Center(
                child: Text('WELCOME BACK!',
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w400)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Email',
                  ),
                ),
              ),
              Container(
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.zero,
                child: FlatButton(
                    onPressed: () {
                      print('Forgot your Password');
                    },
                    child: const Text('Forgot your Password?',
                        style: TextStyle(fontSize: 15))),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 50, 50),
                    primary: Color.fromARGB(255, 60, 59, 148),
                    textStyle:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                onPressed: () {
                  print('Login');
                },
                child: const Text('Login'),
              ),
              Center(
                child: FlatButton(
                    onPressed: () {
                      print('Forgot your Password');
                    },
                    child: const Text(
                      'Create New Account',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 60, 59, 148),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 160, 0, 0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  const Text("© 2022 MANGO POWERED BY ",
                      style: TextStyle(
                        fontSize: 12,
                      )),
                  SvgPicture.network(
                      'https://enrichco.us/wp-content/uploads/2021/12/logo.svg',
                      semanticsLabel: 'enrich',
                      height: 19)
                ]),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
