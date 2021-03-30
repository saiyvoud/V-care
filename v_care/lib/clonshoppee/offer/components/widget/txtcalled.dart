import 'package:flutter/material.dart';

Widget getcalled() {
  return Container(
    height: 60,
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
          hintText: "ເບີໂທຕິດຕໍ່",
          hintStyle: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
      ),
    ),
  );
}
