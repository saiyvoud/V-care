import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v_care/clonshoppee/cart/cart_screen.dart';

import 'package:v_care/clonshoppee/message/message_screen.dart';
import 'package:v_care/clonshoppee/offer/offer_screen.dart';
import 'package:v_care/login/loginyet/loginyet_screen.dart';

import '../home.dart';

class Bottombars extends StatefulWidget {
  @override
  _BottombarsState createState() => _BottombarsState();
}

class _BottombarsState extends State<Bottombars> {
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> _children = [
    Homepage1(),
    OfferScreen(),
    MessageScreen(),
    Cart(),
    Loginyet(),
  ];

  @override
  Widget build(BuildContext context) {
    final String homes = 'images/icons/home.svg';
    final String offer = 'images/icons/offer.svg';
    final String alert = 'images/icons/bell.svg';
    final String cart = 'images/icons/cart.svg';
    final String profile = 'images/icons/user.svg';
    return Scaffold(
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.greenAccent[700],
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              homes,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              'images/icons/home1.svg',
              height: 25,
              width: 25,
              color: Colors.greenAccent[700],
            ),

            // ignore: deprecated_member_use
            title: Text('ໜ້າຫຼັກ'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              offer,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              offer,
              height: 25,
              width: 25,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text('ໃບສັ່ງຊື່'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              alert,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              'images/icons/bell1.svg',
              height: 25,
              width: 25,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text(
              'ແຈ້ງເຕືອນ',
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              cart,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              'images/icons/cart1.svg',
              height: 25,
              width: 25,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text('ກະຕ່າ'),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              profile,
              height: 20,
              width: 20,
            ),
            activeIcon: SvgPicture.asset(
              'images/icons/user1.svg',
              height: 25,
              width: 25,
              color: Colors.greenAccent[700],
            ),
            // ignore: deprecated_member_use
            title: Text('ໂປຮໄຟ'),
          ),
        ],
      ),
    );
  }
}
