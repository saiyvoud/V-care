import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/widget/bottombar.dart';

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottombars(),
    );
  }
}
