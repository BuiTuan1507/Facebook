import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class SaveUser extends StatefulWidget {
  @override
  _SaveUserState createState() => _SaveUserState();
}

class _SaveUserState extends State<SaveUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Đang đăng nhập"),

        automaticallyImplyLeading: true,

      ),
      body: AlertDialog(
        title: Text("Nhớ số điện thoại và mật khẩu của bạn"),
        content: Column(
          children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text("Bạn cần nhập thông tin này vào lần đăng nhập sau",style: TextStyle(fontSize: 18),),
                    ),
                    Container(
                      child: Text("Số điện thoại"),
                    )

                  ],
                )

              ),

          ],
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
            height: 60,
            width: 200,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: BorderSide(color: Color.fromRGBO(23, 119, 242, 1))),
              color: Color.fromRGBO(23, 119, 242, 1),
              onPressed: () {},
              child: Container(
                padding: EdgeInsets.only(left: 90),
                child: Row(
                  children: <Widget>[

                    Container(
                      padding: EdgeInsets.only(left: 5),
                      child: Text(
                        "Xác nhận",
                        style: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
