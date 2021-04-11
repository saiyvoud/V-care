import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/widget/advice_product.dart';

class DetailProduct extends StatelessWidget {
  final Product product;
  const DetailProduct({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: 1800,
            color: Colors.white,
            child: Stack(
              children: [
                Image.asset(
                  'images/img9.jpg',
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    // ignore: deprecated_member_use
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      color: Color(0xFAC9C8D8a),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 230,
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Text('data'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
