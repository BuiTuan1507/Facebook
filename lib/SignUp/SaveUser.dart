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
        title: Text("Nhớ số điện thoại và mật khẩu của bạn",style: TextStyle(color: Color.fromRGBO(54, 54, 54, 1)),),
        content: Container(
          padding: EdgeInsets.all(5),
          height: size.height*0.4,
          child:   Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      height: 60,
                      width: size.width*0.6,
                      child:Flexible(
                        child:Text("Bạn cần nhập thông tin này mỗi khi đăng nhập trên một thiết bị mới",overflow: TextOverflow.fade, style: TextStyle(fontSize: 17,),),
                      ),

                    ),
                  ),

                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: Text("Email"),
                  )
                ],
              ),
              Container(
                height: 4,
              ),
              Row(
                children: <Widget>[
                Container(
                  height: 40,
                  width: size.width*0.65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(228, 230, 235,1)
                  ),
                  child: Container(
                    padding: EdgeInsets.only(top: 7,left: 10),
                    child: Text("0932221212",style: TextStyle(fontSize: 18),),
                  )

                )
                ],
              ),
              Container(
                height: 7,
              ),
              Row(
                children: <Widget>[
                  Container(
                    child: Text("Mat khau"),
                  )
                ],
              ),
              Container(
                height: 4,
              ),
              Row(
                children: <Widget>[
                  Container(
                      height: 40,
                      width: size.width*0.65,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(228, 230, 235,1)
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 7,left: 10),
                        child: Text("assses",style: TextStyle(fontSize: 18),),
                      )

                  )
                ],
              ),
              Container(
                height: 12,
              ),
              Row(
                children: <Widget>[
                  Container(

                      height: 40,
                      width: size.width*0.65,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(24, 119, 242,1)
                      ),
                      child: Container(
                        padding: EdgeInsets.only(top: 7,left: 10),
                        child: Container(
                          padding: EdgeInsets.only(left: size.width*0.27,top: 4),
                          child:  Text("OK",style: TextStyle(fontSize: 18,color: Colors.white),),
                        )

                      )

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
