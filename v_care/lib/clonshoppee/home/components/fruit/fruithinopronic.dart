import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/components/fruit/fhp_product.dart';

class FruitHinopronic extends StatefulWidget {
  @override
  _FruitHinopronicState createState() => _FruitHinopronicState();
}

class _FruitHinopronicState extends State<FruitHinopronic> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
        FHPProduct(),
      ],
    );
  }
}
