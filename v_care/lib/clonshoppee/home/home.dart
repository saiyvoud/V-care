import 'package:flutter/material.dart';

import 'widget/Appbar.dart';
import 'widget/advice_product.dart';
import 'widget/newproduct.dart';
import 'widget/sildepicture.dart';

class Homepage1 extends StatefulWidget {
  @override
  _Homepage1State createState() => _Homepage1State();
}

class _Homepage1State extends State<Homepage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: <Widget>[
          Appbarhome(),
          SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                imageSliderCarousel,
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    _gridItem(Icons.access_alarm, 'ໝາກໄມ້', Colors.orange),
                    SizedBox(
                      width: 20,
                    ),
                    _gridItem(
                        Icons.access_alarm, 'ຜັກ', Colors.greenAccent[700]),
                    SizedBox(
                      width: 20,
                    ),
                    _gridItem(Icons.access_alarm, 'ສິນຄ້າກະສິກຳ', Colors.red),
                    SizedBox(
                      width: 20,
                    ),
                    _gridItem(
                      Icons.access_alarm,
                      'ໝວດໝູ່ສິນຄ້າ',
                      Colors.blue,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    _gridItem(
                        Icons.access_alarm, 'ບັດສ່ວນຫຼຸດ', Colors.yellow[700]),
                    SizedBox(
                      width: 20,
                    ),
                    _gridItem(Icons.access_alarm, 'ໂປໂມຊັ້ນ', Colors.indigo),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Text(
                        'ສິນຄ້າໃໝ່',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'ເບິ່ງເພີມເຕີມ',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 18,
                              width: 20,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.greenAccent[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      newproduct('images/img1.jpg', 'ຜັກຫອມ', 'ປອດສານ',
                          '15,000 LAK/Kg'),
                      SizedBox(
                        width: 15,
                      ),
                      newproduct('images/img2.jpg', 'ຜັກຫອມ', 'ປອດສານ',
                          '15,000 LAK/Kg'),
                      SizedBox(
                        width: 15,
                      ),
                      newproduct('images/img3.jpg', 'ຜັກຫອມ', 'ປອດສານ',
                          '15,000 LAK/Kg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    children: [
                      Text(
                        'ສິນຄ້ານິຍົມ',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      Spacer(),
                      InkWell(
                        child: Row(
                          children: [
                            Text(
                              'ເບິ່ງເພີມເຕີມ',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 18,
                              width: 20,
                              child: CircleAvatar(
                                child: Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: Colors.white,
                                ),
                                backgroundColor: Colors.greenAccent[700],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      newproduct('images/img1.jpg', 'ຜັກຫອມ', 'ປອດສານ',
                          '15,000 LAK/Kg'),
                      SizedBox(
                        width: 15,
                      ),
                      newproduct('images/img2.jpg', 'ຜັກຫອມ', 'ປອດສານ',
                          '15,000 LAK/Kg'),
                      SizedBox(
                        width: 15,
                      ),
                      newproduct('images/img3.jpg', 'ຜັກຫອມ', 'ປອດສານ',
                          '15,000 LAK/Kg'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 10,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                  ),
                ),
              ],
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: [
              gridviewproduct(
                  'images/img1.jpg', 'ຜັກກາດ', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img2.jpg', 'ຜັກສະຫຼັດ', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img3.jpg', 'ຜັກບົ່ງ', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img2.jpg', 'ຜັກແຊວ', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img1.jpg', 'ຜັກຊອມ', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img3.jpg', 'ຜັກ', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img2.jpg', 'vegetable', 'ອີນຊີ', '18,000 LAK/kg'),
              gridviewproduct(
                  'images/img1.jpg', 'vegetable', 'ອີນຊີ', '18,000 LAK/kg'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _gridItem(icon, text, color) {
    return Column(
      children: [
        Container(
          height: 50,
          width: 80,
          child: CircleAvatar(
            child: Icon(
              icon,
              size: 25,
              color: Colors.white,
            ),
            backgroundColor: color,
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
    );
  }
}
