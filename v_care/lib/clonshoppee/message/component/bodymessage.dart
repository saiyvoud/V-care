import 'package:flutter/material.dart';
import 'package:v_care/clonshoppee/message/component/carditem.dart';

class BodyMessage extends StatefulWidget {
  @override
  _BodyMessageState createState() => _BodyMessageState();
}

class _BodyMessageState extends State<BodyMessage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CardItem(
              img: 'images/img1',
              text1: 'Saiyvoud',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img2',
              text1: 'Manyloud',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img3',
              text1: 'Beetwin',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img4',
              text1: 'Moukmany',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img5',
              text1: 'Chantaphone',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img6',
              text1: 'FC_ຂຸນແຜນ',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img7',
              text1: 'ເທິງຂ້ອຍສິມີຫຼາຍເມີຍແຕ່ກໍຮັກເຈົ້າ',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
            CardItem(
              img: 'images/img8',
              text1: 'ຂຸນຊ້າງຫ້າງຮັກ',
              text2: 'SOMNANONG',
              text3: 'BeeTwin Office',
              press: () {},
            ),
          ],
        ),
      ],
    );
  }
}
