import 'package:flutter/material.dart';
import 'MyCard.dart';
import 'image.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(title: Text('Posts')),
      body: ListView.builder(itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16),
          child: Container(
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Post(
                          imgLinkk: "https://picsum.photos/1920/1080",
                        ),
                      ),
                    );
                  },
                  child: MyCard(imgUrl: 'https://picsum.photos/1920/1080'))),
        );
      }),
    );
  }
}
