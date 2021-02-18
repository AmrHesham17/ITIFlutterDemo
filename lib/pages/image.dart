import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Post extends StatefulWidget {
  String imgLinkk;

  Post({this.imgLinkk});

  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return Image.network(widget.imgLinkk);
  }
}
