import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/cart/components/appbar.dart';
import 'package:v_care/clonshoppee/cart/components/body.dart';
import 'package:v_care/clonshoppee/cart/components/bottombar.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Appbar(),
      body: Body(),
      bottomNavigationBar: Bottombar(),
    );
  }
}
