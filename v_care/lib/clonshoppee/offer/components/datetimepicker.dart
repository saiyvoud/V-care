import 'package:flutter/material.dart';

class Datetime extends StatefulWidget {
  @override
  _DatetimeState createState() => _DatetimeState();
}

class _DatetimeState extends State<Datetime> {
  DateTime date = DateTime.now();
  Future<Null> selectTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: date,
      firstDate: DateTime(1940),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
        print(date.toString());
      });
    }
  }

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
            selectTimePicker(context);
          },
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(date.toString()),
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
