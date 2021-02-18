import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyCard extends StatelessWidget {
  String imgUrl;

  MyCard({this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        children: <Widget>[
          ClipRRect(
            child: Image.network(this.imgUrl),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
          ),
          ListTile(
            title: Text('Like', style: TextStyle(fontSize: 14)),
            trailing: Text('Share', style: TextStyle(fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
