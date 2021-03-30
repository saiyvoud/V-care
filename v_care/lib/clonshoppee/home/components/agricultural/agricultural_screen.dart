import 'package:flutter/material.dart';

class Agricultural extends StatefulWidget {
  @override
  _AgriculturalState createState() => _AgriculturalState();
}

class _AgriculturalState extends State<Agricultural> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Agriculture',
            style: TextStyle(fontSize: 22.0, color: Colors.black),
          ),
          bottom: TabBar(
            indicatorColor: Colors.greenAccent[700],
            tabs: [
              Tab(
                  child: Text('Hinopronic',
                      style: TextStyle(fontSize: 15, color: Colors.black))),
              Tab(
                  child: Text('Organic',
                      style: TextStyle(fontSize: 15, color: Colors.black))),
            ],
          ),
        ),
        body: TabBarView(
          children: [],
        ),
      ),
    );
  }
}
