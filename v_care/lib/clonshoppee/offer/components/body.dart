import 'package:flutter/material.dart';

import 'datetimepicker.dart';
import 'widget/btnbutton.dart';
import 'widget/fullname.dart';
import 'widget/txtcalled.dart';
import 'widget/txtlocation.dart';
import 'widget/txtproduct.dart';

class BodyOffer extends StatefulWidget {
  @override
  _BodyOfferState createState() => _BodyOfferState();
}

class _BodyOfferState extends State<BodyOffer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 700,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              buildfullname(),
              SizedBox(
                height: 10,
              ),
              Text(
                'ສິ່ງທີ່ຕ້ອງການ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              GetProduct(),
              SizedBox(
                height: 10,
              ),
              Text(
                'ເບີໂທຕິດຕໍ່',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              getcalled(),
              SizedBox(
                height: 10,
              ),
              Text(
                'ສະຖານທີ່',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Location(),
              SizedBox(
                height: 10,
              ),
              Text(
                'ວັນທີ່ຈັດສົ່ງ',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Datetime(),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getbutton(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
