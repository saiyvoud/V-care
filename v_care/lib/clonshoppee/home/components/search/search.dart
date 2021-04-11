import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/home.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (BuildContext context) => Homepage1(),
            );
            Navigator.of(context).pop(route);
          },
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          CircleAvatar(
              child: Icon(Icons.access_alarm),
              backgroundColor: Color(0xFDD2D6DFFD)),
        ],
        title: Container(
          height: 40,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Color(0xFDD2D6DFFD),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "ຄົ້ນຫາໃນ V-Care",
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
