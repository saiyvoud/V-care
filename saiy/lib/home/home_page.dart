import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:saiy/home/widget/bottombar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final String location = 'assets/icons/location.svg';
  final String customerservice = 'assets/icons/customer-service.svg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent[700],
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              customerservice,
              color: Colors.white,
              height: 25,
              width: 25,
            ),
            onPressed: () {},
          ),
        ],
        leading: IconButton(
          icon: SvgPicture.asset(
            location,
            height: 25,
            width: 25,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Container(
              height: 1500,
              color: Colors.grey,
              width: double.infinity,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bottombar(),
    );
  }
}
