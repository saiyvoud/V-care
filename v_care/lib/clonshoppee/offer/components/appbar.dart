import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget getAppbars() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.greenAccent[700],
    title: Text(
      'ຄຳສັ່ງຊື້',
      style: TextStyle(
        fontSize: 20.0,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevation: 0.0,
    actions: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(
          'images/icons/customer-service.svg',
          height: 25,
          width: 25,
          color: Colors.white,
        ),
      )
    ],
  );
}
