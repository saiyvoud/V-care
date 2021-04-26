import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:v_care/models/login.dart';
import 'package:http/http.dart' as http;
// import 'package:v_care/login/login.dart';

class Registers extends StatefulWidget {
  @override
  _RegistersState createState() => _RegistersState();
}

class _RegistersState extends State<Registers> {
  Future<Logins> signupMethod(
      String name, String call, String password, String comfirm) async {
    // const uri = 'http://localhost:3000/signup';

    Map<String, dynamic> requstPayload = {
      "name": name,
      "call": call,
      "password": password,
      "comfirm": comfirm
    };
    final http.Response response = await http.post(
        Uri.http('localhost:3000', '/signup'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(requstPayload));
    if (response.statusCode == 201) {
      return Logins.fromJson(json.decode(response.body));
    } else {
      throw Exception("Fail to sign up user");
    }
  }

  TextEditingController _nameController = TextEditingController();
  TextEditingController _callController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _comfirmController = TextEditingController();
  bool redEye = true;
  String name, call, password, confirm;
  final formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              buildText(),
              SizedBox(height: 30),
              buildFullname(),
              SizedBox(height: 30),
              buildCall(),
              SizedBox(height: 30),
              buildPassword(),
              SizedBox(height: 30),
              buildComfirm(),
              SizedBox(height: 50),
              buildButtonRegister(),
              SizedBox(height: 20),
              buildif(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButtonRegister() {
    return InkWell(
      onTap: () {
        setState(() {
          signupMethod(
            _nameController.text,
             _callController.text,
              _passwordController.text,
               _comfirmController.text,
              if() 
               );
        });
        if (formKey.currentState.validate()) {
          print("successful");
        } else {
          print("faild");
        }
        // Navigator.pop(context);
      },
      child: Container(
        width: 390.0,
        height: 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.greenAccent[700], Colors.green],
              begin: Alignment.topLeft,
              end: Alignment.topRight),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
          child: Text(
            'ລົງທະບຽນ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget buildComfirm() {
    return Container(
      width: 390.0,
      child: TextFormField(
        controller: _comfirmController,
        obscureText: redEye,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                redEye
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye_sharp,
                color: Color.alphaBlend(Colors.black, Colors.white),
              ),
              onPressed: () {
                setState(() {
                  redEye = !redEye;
                });
              }),
          prefixIcon: Icon(Icons.lock),
          hintText: 'ຍືນຍັນລະຫັດຜ່ານ',
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'ໂປຣປ້ອນລະຫັດຍືນຍັນ';
          } else if (value != _passwordController.text) {
            return "ລະຫັດທັງບໍ່ຕົງກັນ";
          } else {
            return null;
          }
        },
        onSaved: (String value) {
          confirm = value.trim();
        },
      ),
    );
  }

  Widget buildPassword() {
    return Container(
      width: 390.0,
      child: TextFormField(
        controller: _passwordController,
        obscureText: redEye,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          suffixIcon: IconButton(
              icon: Icon(
                redEye
                    ? Icons.remove_red_eye_outlined
                    : Icons.remove_red_eye_sharp,
                color: Color.alphaBlend(Colors.black, Colors.white),
              ),
              onPressed: () {
                setState(() {
                  redEye = !redEye;
                });
              }),
          prefixIcon: Icon(Icons.lock),
          hintStyle:
              TextStyle(color: Color.alphaBlend(Colors.black, Colors.white)),
          hintText: 'ລະຫັດຜ່ານ',
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'ໂປຣປ້ອນລະຫັດ';
          } else {
            return null;
          }
        },
        onSaved: (String value) {
          password = value.trim();
        },
      ),
    );
  }

  Widget buildCall() {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          controller: _callController,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            hintText: 'ເບີໂທ (8ໂຕເລກ)',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          validator: (String value) {
            if (value.length <= 7) {
              return 'charecter not 7';
            } else {
              return null;
            }
          },
          onSaved: (String value) {
            call = value.trim();
          },
        ),
      ),
    );
  }

  Widget buildFullname() {
    return Container(
      height: 60,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextFormField(
          controller: _nameController,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box),
            hintText: 'ຊື່ ແລະ ນາມສະກຸນ',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          validator: (String value) {
            if (value.isEmpty) {
              return 'ໂປຣປ້ອນຊື່ທ່ານ';
            } else {
              return null;
            }
          },
          onSaved: (String value) {
            name = value.trim();
          },
        ),
      ),
    );
  }

  //
  Text buildText() {
    return Text(
      'ລົງທະບຽນ',
      style: TextStyle(fontSize: 22.0, color: Colors.black),
    );
  }

  Widget buildif() {
    return Column(
      children: [
        Text(
          'ເມື່ອທ່ານກົດຕົກລົງ ແມ່ນໝາຍເຖິງທ່ານໄດ້ຍອມຮັບເງື່ອນໄຂ',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(height: 5),
        Text(
          'ແລະ ກົດລະບຽບໃນການໃຫ້ບໍລິການຂອງພວກເຮົາ',
          style: TextStyle(color: Colors.black, fontSize: 13),
        ),
        SizedBox(height: 8),
        InkWell(
          child: Text(
            'ເງື່ອນໄຂການໃຫ້ບໍລິການແລະນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ',
            style: TextStyle(
              color: Colors.orange,
              fontSize: 13,
            ),
          ),
        ),
      ],
    );
  }
}
