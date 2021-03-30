import 'package:flutter/material.dart';

import '../login.dart';

class Loginyet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: 550),
          Row(
            children: [
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  MaterialPageRoute route = MaterialPageRoute(
                    builder: (BuildContext context) => Login(),
                  );
                  Navigator.of(context).push(route);
                },
                child: Container(
                  height: 60,
                  width: 150.0,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(
                    //     colors: [Colors.greenAccent[700], Colors.green],
                    //     begin: Alignment.topLeft,
                    //     end: Alignment.topRight),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.greenAccent[700],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Text(
                      'ເຂົ້າລະບົບ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              Container(
                height: 60,
                width: 150.0,

                // ignore: deprecated_member_use
                child: OutlineButton(
                  child: Text(
                    'ລົງທະບຽນ',
                    style: TextStyle(fontSize: 22.0, color: Colors.black),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
