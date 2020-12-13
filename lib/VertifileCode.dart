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
            top: size.height*0.04,
                left: size.height*0.015,
                child: Text("Chúng tôi đã gửi SMS kèm mã tới",style: TextStyle(fontSize: 18,color: Colors.black),),
              ),
          Positioned(
            top: size.height*0.04,
                left: size.width*0.7,
                child: Text('0923234331',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.black),),
              ),


          Positioned(
              top: size.height*0.085,
            left: size.width*0.1,
            child: Container(
                child: Text("Nhập mã gồm 5 chữ số từ SMS của bạn",style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,color: Colors.black),),
              )

          ),
          Positioned(
            top:size.height*0.13,
            left: size.width*0.30,
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
                  width: 130,
                  child: TextField(

                      decoration: new InputDecoration(

                        fillColor: Colors.white,

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(4.0),
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
            top: size.height*0.225,
            left: size.width*0.05,

              child: Container(
                padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
                height: 60,
                width: size.width * 0.9,
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
            ),
          Positioned(
            top: size.height*0.31,
            left: size.width*0.08,
            child: Container(
              width: size.width*0.8,
              child: Divider(color: Colors.grey,),
            ),
          ),
          Positioned(
            top: size.height*0.345,
            left: size.width*0.05,

            child: Container(
              padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
              height: 60,
              width: size.width * 0.9,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: BorderSide(color: Color.fromRGBO(229, 230, 235, 1))),
                color: Color.fromRGBO(229, 230, 235, 1),
                onPressed: () {},
                child: Container(
                  padding: EdgeInsets.only(left: 40),
                  child: Row(
                    children: <Widget>[

                      Container(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Tôi không nhận được mã",
                          style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height*0.44,
            left: size.width*0.4,
            child:InkWell(
              onTap: (){

              },
              child: Text("Đăng xuất",style: TextStyle(fontSize: 20),),
            )
          )



        ],
      ),
    );
  }
}
