import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/message/component/carditem.dart';

class BodyMessage extends StatefulWidget {
  @override
  _BodyMessageState createState() => _BodyMessageState();
}

class _BodyMessageState extends State<BodyMessage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
            CardItem(),
          ],
        ),
      ],
    );
  }
}
