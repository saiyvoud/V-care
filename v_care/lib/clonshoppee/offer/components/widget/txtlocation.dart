import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/profile/components/live.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color(0xFDD2D6DFFD),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        // ignore: deprecated_member_use
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 5),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Color(0xFFD8DEEE),
          onPressed: () {
            MaterialPageRoute route = MaterialPageRoute(
              builder: (BuildContext context) => Live(),
            );
            Navigator.of(context).push(route);
          },
          child: Row(
            children: <Widget>[
              Text(
                'ສະຖານທີ່ສົ່ງ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                ),
              ),
              Spacer(),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
