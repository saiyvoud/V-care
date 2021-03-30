import 'package:flutter/material.dart';

Widget getbutton() {
  return Container(
    width: 220,
    height: 50,

    // ignore: deprecated_member_use
    child: RaisedButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      color: Colors.greenAccent[700],
      onPressed: () {},
      child: Text(
        'ບັນທຶກ',
        style: TextStyle(
            fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  );
}
