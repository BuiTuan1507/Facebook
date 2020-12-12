import 'package:flutter/material.dart';

class VertifileCode extends StatefulWidget {
  String phone;

  @override
  _VertifileCodeState createState() => _VertifileCodeState();

  VertifileCode({Key key, this.phone}) : super(key: key);
}

class _VertifileCodeState extends State<VertifileCode> {
  String code;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Xác thực tài khoản",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: size.height*0.1,
                left: size.height*0.1,
                child: Text("Chúng tôi đã gửi SMS kèm mã tới"),
              ),
          Positioned(
            top: 20,
                left: size.width*0.6,
                child: Text('.${widget.phone}'),
              ),


          Positioned(
              top: 50,
            left: 40,
            child: Container(
                child: Text("Nhập mã gồm 5 chữ số từ SMS của bạn"),
              )

          ),
          Positioned(
            top:80,
            left: size.width*0.4,
            child: Row(
              children: <Widget>[
                Container(
                  child: Text(
                    "FB-",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87),
                  ),
                ),
                Container(
                  height: 40,
                  width: 100,
                  child: TextField(

                      decoration: new InputDecoration(
                        labelText: "Code",
                        fillColor: Colors.white,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      )
                  ),
                )

              ],
            ),
          ),
          Positioned(
            top: size.height*0.4,
            left: size.width*0.1,

              child: Container(
                padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
                height: 60,
                width: size.width * 0.6,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                      side: BorderSide(color: Color.fromRGBO(23, 119, 242, 1))),
                  color: Color.fromRGBO(23, 119, 242, 1),
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: <Widget>[

                        Container(
                          padding: EdgeInsets.only(left: 5),
                          child: Text(
                            "Xác nhận",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),


        ],
      ),
    );
  }
}
