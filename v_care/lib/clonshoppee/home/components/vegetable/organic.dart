import 'package:flutter/material.dart';

import 'ogn_product.dart';

class Organic extends StatefulWidget {
  @override
  _OrganicState createState() => _OrganicState();
}

class _OrganicState extends State<Organic> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
        OrganicProduct(),
      ],
    );
  }
}
