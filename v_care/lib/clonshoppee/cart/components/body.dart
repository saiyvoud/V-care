import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: ListView(
        children: [
          Row(
            children: [
              Radio(
                value: null,
                onChanged: (Null value) {},
                groupValue: null,
                activeColor: Colors.orange,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('images/img3.jpg'),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                'ທ່າຊ້າງ',
                style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Spacer(),
              Column(
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'images/icons/cart1.svg',
                        height: 20,
                        width: 20,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'ພ້ອມຈັດສົ່ງ',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                  Text(
                    '11:00 ເປັນຕົ້ນໄປ',
                    style: TextStyle(fontSize: 15, color: Colors.green),
                  ),
                ],
              )
            ],
          ),
          Divider(
            color: Colors.grey,
          ),
          SizedBox(
            height: 150,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 50),
                  child: Radio(
                    value: null,
                    onChanged: (Null value) {},
                    groupValue: null,
                    activeColor: Colors.orange,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 15),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: Color(0xFAE5F0F0FD),
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('images/img3.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ຜັກກາດ',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Text(
                        '15,000 LAK/Kg',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.orange,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'ຜັກປອດສານ',
                        style: TextStyle(
                            fontSize: 15, color: Colors.greenAccent[700]),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 10,
                      ),
                      child: SvgPicture.asset(
                        'images/icons/cart.svg',
                        height: 25,
                        width: 25,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 15.0,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text('1'),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.blue[300],
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Icon(
                              Icons.add,
                              size: 15.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
