import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/offer/components/product_need.dart';

class GetProduct extends StatefulWidget {
  @override
  _GetProductState createState() => _GetProductState();
}

class _GetProductState extends State<GetProduct> {
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
              builder: (BuildContext context) => NeedProduct(),
            );
            Navigator.of(context).push(route);
          },
          child: Row(
            children: <Widget>[
              Text(
                'ສິ່ງທີ່ຕ້ອງການ',
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
