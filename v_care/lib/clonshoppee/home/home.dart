import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/home/components/detailproduct/detail_screen.dart';
import 'package:v_care/clonshoppee/home/components/fruit/fruit.dart';
import 'package:v_care/clonshoppee/home/components/vegetable/vegetable.dart';
import 'package:v_care/clonshoppee/home/widget/menu.dart';

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
                    Menu(
                      icon: Icons.access_alarm,
                      text: 'ໝາກໄມ້',
                      color: Colors.orange,
                      press: () {
                        MaterialPageRoute route = MaterialPageRoute(
                          builder: (BuildContext context) => Fruit(),
                        );
                        Navigator.of(context).push(route);
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Menu(
                      icon: Icons.access_alarm,
                      text: 'ຜັກ',
                      color: Colors.greenAccent[700],
                      press: () {
                        MaterialPageRoute route = MaterialPageRoute(
                          builder: (BuildContext context) => Vegetable(),
                        );
                        Navigator.of(context).push(route);
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Menu(
                      icon: Icons.access_alarm,
                      text: 'ສິນຄ້າກະສິກຳ',
                      color: Colors.red,
                      press: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Menu(
                      icon: Icons.access_alarm,
                      text: 'ໝວດໝູ່ສິນຄ້າ',
                      color: Colors.blue,
                      press: () {},
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
                    Menu(
                      icon: Icons.access_alarm,
                      text: 'ບັດສ່ວນຫຼຸດ',
                      color: Colors.yellow[700],
                      press: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Menu(
                      icon: Icons.access_alarm,
                      text: 'ໂປໂມຊັ້ນ',
                      color: Colors.indigo,
                      press: () {},
                    ),
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
              Product(
                imgPath: 'images/pine-apple.jpg',
                name: 'ຜັກກາດ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img6.jpg',
                name: 'ຜັກສະຫຼັດ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img7.jpg',
                name: 'ຜັກບົ່ງ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img5.jpg',
                name: 'ຜັກແຊວ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/apple.jpg',
                name: 'ຜັກຊອມ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img8.jpg',
                name: 'ຜັກ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img9.jpg',
                name: 'vegetable',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduct(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
              Product(
                imgPath: 'images/img6.jpg',
                name: 'vegetable',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/pine-apple.jpg',
                name: 'ຜັກກາດ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img6.jpg',
                name: 'ຜັກສະຫຼັດ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img7.jpg',
                name: 'ຜັກບົ່ງ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img5.jpg',
                name: 'ຜັກແຊວ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/apple.jpg',
                name: 'ຜັກຊອມ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img8.jpg',
                name: 'ຜັກ',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
              Product(
                imgPath: 'images/img9.jpg',
                name: 'vegetable',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduct(),
                  );
                  Navigator.of(context).push(route);
                },
              ),
              Product(
                imgPath: 'images/img6.jpg',
                name: 'vegetable',
                type: 'ອີນຊີ',
                price: '18,000 LAK/kg',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
