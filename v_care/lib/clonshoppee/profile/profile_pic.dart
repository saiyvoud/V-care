import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// class ProfilePic extends StatelessWidget {
//   const ProfilePic({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 155,
//       width: 155,
//       child: Stack(

//         children: [
//           Positioned(
//             bottom: 0,
//             child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
//               child: Card(
//                 margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
//                 clipBehavior: Clip.antiAlias,
//                 color: Colors.white,
//                 elevation: 8.0,
//                 child: CashInfo(),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// return
// );
//   }
// }
class CashInfo extends StatefulWidget {
  @override
  _CashInfoState createState() => _CashInfoState();
}

class _CashInfoState extends State<CashInfo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
          clipBehavior: Clip.antiAlias,
          color: Colors.white,
          elevation: 8.0,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      'images/icons/cart1.svg',
                      height: 25,
                      width: 25,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('ສ່ວນຫຼຸດ'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      'images/icons/cart1.svg',
                      height: 25,
                      width: 25,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('ສ່ວນຫຼຸດ'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    SvgPicture.asset(
                      'images/icons/cart1.svg',
                      height: 25,
                      width: 25,
                      color: Colors.orange,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('ສ່ວນຫຼຸດ'),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
