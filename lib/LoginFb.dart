import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uifacebook/signin.dart';
class LoginFb extends StatefulWidget {
  @override
  _LoginFbState createState() => _LoginFbState();
  String token;
  LoginFb({Key key,  this.token}) : super(key: key);
}

class _LoginFbState extends State<LoginFb> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: LoginFbStatus(),
    );
  }
  Widget LoginFbStatus(){
    return new Container(
      padding: EdgeInsets.all(16),
      child:  Column(
        children: <Widget>[
          showLogoFacebook(),
          showAcountUser(),
          showButtonLoginAnotherAcount(),
          showButtonSearchAcount(),
          showButtonCreateNewAcount(),
        ],
      ),
    );

  }
  Widget showLogoFacebook(){
    return new Container(
      padding: EdgeInsets.only(top: 150,bottom: 40),
      child: Image.asset("assets/FBLogo.png",
        height: 50,
        width: 50,
      ),
    );
  }
  Widget showAcountUser(){
    return new Container(
      padding: EdgeInsets.only(bottom: 20),
      child:  Row(
        children: <Widget>[
          Image.asset("assets/ramdom.jpg", width: 80,height: 80,),

          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Text(
              "Nguyen Hoang", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Icon(
            Icons.settings, size: 25,color: Colors.blue,
          )
        ],
      ),
    );

  }
  Widget showButtonLoginAnotherAcount(){

    return new Container(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.add, size: 25,color: Colors.blue,
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>signIn()));
            },
            child: Container(
              padding: EdgeInsets.only(left: 30),
              child: Text ("Đăng nhập bằng tài khoản khác",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue),),
            ),
          )
        ],
      ),
    );


  }
  Widget showButtonSearchAcount(){
    return new Container(
      padding: EdgeInsets.only(bottom: 100),
      child: Row(
        children: <Widget>[
          Container(
            child: Icon(
              Icons.search, size: 25,color: Colors.blue,
            ),
          ),
          GestureDetector(
            onTap: (){
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(builder: (context) =>signIn()));
            },
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Text ("Tìm tài khoản" , style: TextStyle(color: Colors.blue),),
            ),
          )
        ],
      ),
    );

  }
  Widget showButtonCreateNewAcount(){
      return new RaisedButton(
        onPressed: (){Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) =>signIn()));},
        child: Text(
          "Tạo tài khoản Facebook mới", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
      );
  }
}
