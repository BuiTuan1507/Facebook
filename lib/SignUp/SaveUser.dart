import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class SaveUser extends StatefulWidget {
  @override
  _SaveUserState createState() => _SaveUserState();
}

class _SaveUserState extends State<SaveUser> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Đang đăng nhập"),

        automaticallyImplyLeading: true,

      ),
      body: AlertDialog(
        title: Text("Nhớ số điện thoại và mật khẩu của bạn"),
        content: Container(
          padding: EdgeInsets.all(5),
          height: size.height*0.4,
          child:   Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: 60,
                    width: size.width*0.6,
                    child:Flexible(
                      child:Text("Bạn cần nhập thông tin này mỗi khi đăng nhập trên một thiết bị mới",overflow: TextOverflow.fade, style: TextStyle(fontSize: 17,),),
                    ),

                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: Text("Email"),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                Container(
                  width: size.width*0.6,
                  decoration: BoxDecoration(
                    color: Colors.grey
                  ),
                  child: Text("0932221212",style: TextStyle(fontSize: 18),),
                )
                ],
              ),

            ],
          ),
        )


      ),
    );
  }
}
