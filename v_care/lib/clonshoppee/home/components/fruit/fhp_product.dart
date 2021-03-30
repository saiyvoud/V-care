import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FHPProduct extends StatefulWidget {
  @override
  _FHPProductState createState() => _FHPProductState();
}

class _FHPProductState extends State<FHPProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xFFF5F6F9)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 5),
        child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0))),
          elevation: 10.0,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  'images/img1.jpg',
                  height: 120,
                  width: 250,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 5,
                  left: 10,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          ' name,',
                          style: TextStyle(fontSize: 13),
                        ),
                        Text(
                          ' type',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.greenAccent[700],
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' price',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        SmoothStarRating(
                          starCount: 5,
                          size: 13,
                          rating: 4,
                          color: Colors.yellow,
                          borderColor: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 150, left: 120),
                      height: 30,
                      width: 80,
                      child: InkWell(
                        onTap: () {},
                        child: Ink(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            gradient: LinearGradient(
                                colors: [Colors.redAccent, Colors.orange],
                                begin: Alignment.topLeft,
                                end: Alignment.topRight),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            child: Text(
                              'ເບິ່ງສິນຄ້າ',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        margin: EdgeInsets.only(top: 10, right: 20),
                        height: 30,
                        width: 65,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent[700],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'images/icons/cart1.svg',
                              height: 15,
                              width: 15,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'ຈັດສົ່ງຟີ',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 180),
                      child: Icon(
                        Icons.ac_unit_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
