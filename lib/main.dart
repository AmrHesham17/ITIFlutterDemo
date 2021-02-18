import 'package:flutter/material.dart';
// ignore: unused_import
import 'pages/HomePage.dart';
import 'pages/PostServ.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ITI Project',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign in')),
      ),
      backgroundColor: Color(0xfff6f6f6),
      body: Container(
        padding: EdgeInsets.only(right: 10, left: 10, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffd3e0ea),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              padding: EdgeInsets.only(right: 40, left: 40, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(labelText: 'Enter your email'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration:
                        InputDecoration(labelText: 'Enter your password'),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          openImage();
                        },
                        child: const Text('Sign in',
                            style: TextStyle(fontSize: 20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text('Need an account? register',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: Text('Forgot password?',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openImage() {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return PostServ();
    }));
  }
}
