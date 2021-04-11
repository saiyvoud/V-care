import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v_care/clonshoppee/home/components/search/search.dart';

class Appbarhome extends StatefulWidget {
  @override
  _AppbarhomeState createState() => _AppbarhomeState();
}

class _AppbarhomeState extends State<Appbarhome> {
  final String location = 'images/icons/menu.svg';
  final String customerservice = 'images/icons/live-chat.svg';
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      title: Text('V-Care Shopping'),
      backgroundColor: Colors.greenAccent[700],
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (BuildContext context) => Search(),
            );
            Navigator.of(context).push(route);
          },
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
          height: 20,
          width: 20,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
