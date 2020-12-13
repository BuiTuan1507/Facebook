import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class FailRegister extends StatefulWidget {
  @override
  _FailRegisterState createState() => _FailRegisterState();
}

class _FailRegisterState extends State<FailRegister> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tài khoản chưa được tạo",style: TextStyle(fontSize: 22,color: Colors.black),),
        automaticallyImplyLeading: true,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: size.height*0.15,
            left: size.width*0.04,
            child: Text("Chúng tôi không thể tạo tài khoản của ", style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          Positioned(
            top: size.height*0.19,
            left: size.width*0.40,
            child: Text("bạn", style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.black),),
          ),
          Positioned(
            top:size.height*0.25,
            left: size.width*0.06,
            child: Text("Chúng tôi không thể đăng ký Facebook cho bạn",style: TextStyle(fontSize: 18),),
          )
        ],
      ),
    );
  }
}
