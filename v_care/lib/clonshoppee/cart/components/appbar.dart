import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: non_constant_identifier_names
Widget Appbar() {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Row(
      children: [
        Text(
          'ກະຕ່າສິນຄ້າ',
          style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          '(3)',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
      ],
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          'images/icons/live-chat.svg',
          height: 25,
          width: 25,
          color: Colors.black54,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          'images/icons/location1.svg',
          color: Colors.black54,
          height: 25,
          width: 25,
        ),
        onPressed: () {},
      ),
    ],
  );
}
