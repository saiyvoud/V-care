import 'package:flutter/material.dart';

Widget getsurname() {
  return Container(
    height: 60,
    width: 180,
    decoration: BoxDecoration(
      color: Color(0xFDD2D6DFFD),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: "ນາມສະກຸນ",
          hintStyle: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
