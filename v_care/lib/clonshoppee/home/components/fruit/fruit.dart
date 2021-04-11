import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/components/fruit/fruithinopronic.dart';
import 'package:v_care/clonshoppee/home/components/fruit/fruitorganic.dart';
import 'package:v_care/clonshoppee/home/home.dart';

class Fruit extends StatefulWidget {
  @override
  _FruitState createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                  builder: (BuildContext context) => Homepage1());
              Navigator.of(context).pop(route);
            },
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Fruit',
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
          children: [
            FruitHinopronic(),
            FruitOrganic(),
          ],
        ),
      ),
    );
  }
}
