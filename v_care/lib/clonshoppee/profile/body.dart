import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:v_care/clonshoppee/profile/components/Editprofile.dart';
import 'package:v_care/clonshoppee/profile/components/languages.dart';
import 'package:v_care/clonshoppee/profile/components/live.dart';
import 'package:v_care/clonshoppee/profile/profile_pic.dart';

import 'components/changepassword.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 80),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.greenAccent[700], Colors.green],
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 260.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'images/img2.jpg',
                          ),
                          radius: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Saiyvoud Somnaong',
                          style: TextStyle(fontSize: 22.0, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ProfileMenu(
                        icon: 'images/icons/user.svg',
                        text: "ແກ້ໄຂໂປຣໄຟ",
                        press: () {
                          MaterialPageRoute route = MaterialPageRoute(
                            builder: (BuildContext context) => Editprofile(),
                          );
                          Navigator.of(context).push(route);
                        },
                      ),
                      ProfileMenu(
                        icon: 'images/icons/changepassword.svg',
                        text: "ປ່ຽນລະຫັດ",
                        press: () {
                          MaterialPageRoute route = MaterialPageRoute(
                            builder: (BuildContext context) => ChangePassWord(),
                          );
                          Navigator.of(context).push(route);
                        },
                      ),
                      ProfileMenu(
                        icon: 'images/icons/home.svg',
                        text: "ທີ່ຢູ່",
                        press: () {
                          MaterialPageRoute route = MaterialPageRoute(
                            builder: (BuildContext context) => Live(),
                          );
                          Navigator.of(context).push(route);
                        },
                      ),
                      ProfileMenu(
                        icon: 'images/icons/translation.svg',
                        text: "ພາສາ",
                        press: () {
                          MaterialPageRoute route = MaterialPageRoute(
                            builder: (BuildContext context) => Languages(),
                          );
                          Navigator.of(context).push(route);
                        },
                      ),
                      ProfileMenu(
                        icon: 'images/icons/logout.svg',
                        text: "ອອກຈາກລະບົບ",
                        press: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 190),
              height: 150,
              child: CashInfo()),
        ],
      ),
    );
  }
}

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key key, this.text, this.icon, this.press})
      : super(key: key);
  final String text, icon;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      // ignore: deprecated_member_use
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        color: Color(0xFFD8DEEE),
        onPressed: press,
        child: Row(
          children: <Widget>[
            SvgPicture.asset(
              icon,
              width: 20,
              height: 20,
              color: Colors.amber[700],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                text,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Icon(Icons.arrow_forward),
          ],
        ),
      ),
    );
  }
}
