import 'package:flutter/material.dart';

class CardItem extends StatefulWidget {
  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 100,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xFAE4E4EEFA),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Image.asset('images/img1.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'ໂປໂມຊັນຍາມຮ້ອນ....',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  'Mr saiyvoud somnanong....',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                Text(
                  'Mr saiyvoud somnanong....',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text('Day'),
              SizedBox(
                height: 30,
              ),
              Icon(
                Icons.access_alarm,
                size: 18,
                color: Colors.orange,
              )
            ],
          ),
        )
      ],
    );
  }
}
