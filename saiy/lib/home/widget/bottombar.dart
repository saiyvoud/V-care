import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottombar extends StatefulWidget {
  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  final String homes = 'assets/icons/home.svg';
  final String offer = 'assets/icons/offer.svg';
  final String alert = 'assets/icons/bell.svg';
  final String cart = 'assets/icons/cart.svg';
  final String profile = 'assets/icons/user.svg';
  final String location = 'assets/icons/location.svg';
  int currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            homes,
            height: 25,
            width: 25,
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
            height: 25,
            width: 25,
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
            height: 25,
            width: 25,
          ),
          activeIcon: SvgPicture.asset(
            'images/icons/bell1.svg',
            height: 25,
            width: 25,
            color: Colors.greenAccent,
          ),
          // ignore: deprecated_member_use
          title: Text('ແຈ້ງເຕືອນ'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            cart,
            height: 25,
            width: 25,
          ),
          activeIcon: SvgPicture.asset(
            'images/icons/cart1.svg',
            height: 25,
            width: 25,
            color: Colors.greenAccent,
          ),
          // ignore: deprecated_member_use
          title: Text('ກະຕ່າ'),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            profile,
            height: 25,
            width: 25,
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
    );
  }
}
