import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:uifacebook/SignUp/signupDate.dart';
import 'package:uifacebook/SignUp/signupName.dart';
import 'package:uifacebook/SignUp/signupPhone.dart';

class signUpSex extends StatefulWidget {
  String phone;
  String firstName;
  String lastName;
  String sexUser;
  bool nu = false;
  bool nam = false;
  bool tuychinh = false;
  String namValue = "nam";
  String nuValue = "nu";
  String tuychinhValue = "";
  signUpSex({Key key, this.phone, this.firstName, this.lastName}) : super(key: key);
  @override
  _signUpSexState createState() => _signUpSexState();
}

class _signUpSexState extends State<signUpSex> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size
        ;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('Giới tính', style: TextStyle(fontSize: 22,fontWeight:FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: <Widget>[
          _showText1(),
          _showText2(),
         _showSex(),
          _showButton(context)
        ],
      ),
    );
  }
Widget _showSex(){
  Size size = MediaQuery
      .of(context)
      .size
      ;
    return new Container(
      child: Column(
        children: <Widget>[
          Container(height: 25,),
          Row(
            children: <Widget>[

              Container(
                padding: EdgeInsets.only(left: 15),
                height: 30,
                width: size.width,
                child: CheckboxListTile(
                  title: Text("Nữ",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 21),),
                  value: widget.nu,
                  onChanged: (bool value){
                    setState(() {
                     if(widget.nam == true){
                       widget.nam = false;
                       widget.nu = true;
                     }
                     else if(widget.tuychinh == true){
                       widget.tuychinh = false;
                       widget.nu = true;
                     }else{
                       widget.nu = !widget.nu;
                     }
                    });
                  },
                ),
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 10,
                width: size.width*0.95,
                child: Divider(
                  thickness: 1,
                  indent: 30,
                  color: Colors.black,
                ),
              )


            ],
          ),
          Container(height: 20,),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15),
                height: 30,
                width: size.width,
                child: CheckboxListTile(
                  title: Text("Nam",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 21),),
                  value: widget.nam,
                  onChanged: (bool value){
                    setState(() {
                      if(widget.nu == true){
                        widget.nu = false;
                        widget.nam = true;
                      }
                      else if(widget.tuychinh == true){
                        widget.tuychinh = false;
                        widget.nam = true;
                      }else{
                        widget.nam = !widget.nam;
                      }
                    });
                  },
                ),
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 10,
                width: size.width*0.95,
                child: Divider(
                  thickness: 1,
                  indent: 30,
                  color: Colors.black,
                ),
              )


            ],
          ),
          Container(height: 20,),
          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 15),
                height: 30,
                width: size.width,
                child: CheckboxListTile(
                  title: Text("Tùy chỉnh",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 21),),
                  value: widget.tuychinh,
                  onChanged: (bool value){
                    setState(() {
                      if(widget.nu == true){
                        widget.nu = false;
                        widget.tuychinh = true;
                      }
                      else if(widget.nam == true){
                        widget.nam = false;
                        widget.tuychinh = true;
                      }else{
                        widget.tuychinh = !widget.tuychinh;
                      }

                    });
                  },
                ),
              ),

            ],
          ),

             Column(
               children: <Widget>[
                 Container(
                   padding:EdgeInsets.only(top: 15,right: 30,left: 30,bottom: 10),
                   child: Text("Chọn Tùy chỉnh nếu bạn thuộc giới tính khác hoặc bạn không muốn tiết lộ",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),),
                 )
               ],
             ),


          Row(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 20),
                height: 10,
                width: size.width*0.95,
                child: Divider(
                  thickness: 1,
                  indent: 30,
                  color: Colors.black,
                ),
              )


            ],
          ),

        ],
      ),
    );
}
Widget _showText1(){
  return new Container(
    padding: EdgeInsets.only(top: 40,right: 20,left: 20),
    child:  Center(

      child: Text(
        'Giới tính của bạn là gì',
        textAlign: TextAlign.center
        ,style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    ),
  );
}
Widget _showText2(){
  return new Container(
    padding: EdgeInsets.only(top: 20,left: 20,right: 20),
    child: Center(
      child: Text(
        'Về sau, bạn có thể thay đổi những ai nhìn thấy giới tính của mình trên trang cá nhân',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 19,
          color: Colors.black
        ),
      ),
    ),
  );
}

Widget _showButton(context){
  return Container(
    padding: EdgeInsets.only(right: 20, left: 20, top: 70, bottom: 0),
    height: 120.0,
    child: Material(
      borderRadius: BorderRadius.circular(8.0),
      color: Color.fromRGBO(24, 119, 242, 1),
      elevation: 7.0,
      child: GestureDetector(
        onTap: () {
          if(widget.tuychinh == true)
            {
              setState(() {
                widget.sexUser = widget.tuychinhValue;
              });
            }
          else if(widget.nu == true) {
            setState(() {
              widget.sexUser = "nu";
            });

          }else{
            setState(() {
              widget.sexUser = "nam";
            });

          }


          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUpDate(phone: widget.phone,firstName:widget.firstName,lastName:widget.lastName,male:widget.sexUser)));

        },
        child: Center(
          child: Text(
            'Tiếp',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
        ),
      ),
    ),
  );


}
}

class Sex {
  int sexId;
  String name;
  String info;

  Sex({this.sexId, this.name, this.info});

  static List<Sex> getSexs() {
    return <Sex>[
      Sex(sexId: 1, name: "Nam",info: ""),
      Sex(sexId: 2, name: "Nữ",info: ""),
      Sex(sexId: 3, name: "Tùy chỉnh",info: "Chọn Tùy chỉnh nếu bạn thuộc giới tính khác hoặc không muốn tiết lộ"),
    ];
  }
}