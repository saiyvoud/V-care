import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:v_care/clonshoppee/profile/body.dart';

class Live extends StatefulWidget {
  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Text(
            'ທີ່ຢູ່',
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              MaterialPageRoute route = MaterialPageRoute(
                builder: (BuildContext context) => Body(),
              );
              Navigator.of(context).pop(route);
            },
          ),
        ),
        extendBodyBehindAppBar: true,

        // ignore: deprecated_member_use
        floatingActionButton: getFloatiactionbutton(),
        body: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            Customcard(),
            SizedBox(
              height: 20,
            ),
            Customcard(),
            ListTile(
              leading: Radio(
                value: null,
                onChanged: (Null value) {},
                groupValue: null,
              ),
              title: Text(
                'data',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Row(
                children: [
                  Icon(Icons.check),
                  Text('ghuikkiioo'),
                ],
              ),
              trailing: Text('bee'),
            ),
          ],
        ));
  }

  Widget getFloatiactionbutton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.greenAccent[700],
      child: SvgPicture.asset(
        'images/icons/cart.svg',
        height: 25,
        width: 25,
        color: Colors.white,
      ),
    );
  }
}

class Customcard extends StatefulWidget {
  @override
  _CustomcardState createState() => _CustomcardState();
}

class _CustomcardState extends State<Customcard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Radio(
        value: null,
        onChanged: (Null value) {},
        groupValue: null,
      ),
      title: Text(
        'data',
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Icon(Icons.check),
          Text('ghuikkiioo'),
        ],
      ),
      trailing: Text('bee'),
    );
  }
}
