import 'package:flutter/material.dart';
class SavePassword extends StatefulWidget {
  @override
  _SavePasswordState createState() => _SavePasswordState();
}

class _SavePasswordState extends State<SavePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Đang đăng nhập ...",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
      ),
      body: AlertDialog(
        title: Text("Lần sau, đăng nhập bằng một nhấn", style: TextStyle(fontSize: 20, color: Colors.black),

      ),
        content: Text("Bạn đã đăng nhập facebook. Hãy lưu mật khẩu và bạn có thể đăng nhập trên điện thoại này bằng cách nhấn vào tài khoản."),
        actions: [
          Container(
            padding: EdgeInsets.only(bottom: 13,right: 15),
            child: InkWell(
              onTap: (){},
              child: Text("Lúc khác",style: TextStyle(fontSize: 18),),
            ),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 13,right: 10),
            child:  InkWell(
              onTap: (){},
              child: Text("Lưu mật khẩu",style: TextStyle(fontSize: 18,color: Colors.blue),),
            ),
          )





        ],

    ));
  }
}
