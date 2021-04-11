import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key key, this.icon, this.color, this.press, this.text})
      : super(key: key);
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          InkWell(
            onTap: press,
            child: SizedBox(
              height: 50,
              width: 70,
              child: CircleAvatar(
                child: Icon(
                  icon,
                  size: 25,
                  color: Colors.white,
                ),
                backgroundColor: color,
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
