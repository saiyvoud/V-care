import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/offer/components/appbar.dart';
import 'package:v_care/clonshoppee/offer/components/body.dart';

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent[700],
      appBar: getAppbars(),
      body: BodyOffer(),
    );
  }
}
