import 'package:flutter/material.dart';

Widget newproduct(imagepath, text1, text2, price) {
  return Column(
    children: [
      Container(
        height: 160,
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Color(0xFFF5F6F9)),
        child: Stack(
          children: [
            Container(
              child: Image.asset(
                imagepath,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 5,
              left: 10,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      text1,
                      style: TextStyle(fontSize: 13),
                    ),
                    Text(
                      text2,
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.greenAccent[700],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ],
  );
}
