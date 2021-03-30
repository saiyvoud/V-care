import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/components/fruit/fho_product.dart';

class FruitOrganic extends StatefulWidget {
  @override
  _FruitOrganicState createState() => _FruitOrganicState();
}

class _FruitOrganicState extends State<FruitOrganic> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
        FHOProduct(),
      ],
    );
  }
}
