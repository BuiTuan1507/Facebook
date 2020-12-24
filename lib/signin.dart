import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uifacebook/LoginFb.dart';
import 'SignUp/signup.dart';

import "package:http/http.dart" as http;
class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  final _formKey = new GlobalKey<FormState>();
  String _phoneNumber;
  String _password;
  String _errorMessage;
  bool _isLoading;
  bool _isLoginForm;
  MessageLogin message;
  //kiem tra xem form da valid hay chua

  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
   //submit
  void validateAndSubmit() async {

    setState(() {
      _errorMessage = "";
      _isLoading = true;
    });
    if(validateAndSave())
    {
        try
        {
          print(_phoneNumber);
          print(_password);
          final http.Response response = await http.post(
            'http://7bc8a6686fac.ngrok.io/api/login',
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: jsonEncode(<String, String>{
              "phonenumber": _phoneNumber,
              "password": _password,

            }),
          );


          setState(() {
            _isLoading = false;
          });
          message = MessageLogin.fromJson(json.decode(response.body));
          print(message);
        }catch(e){
          print("Error : $e");
          setState(() {
            _isLoading = false;
            _errorMessage = e.message;
            _formKey.currentState.reset();
          });
        }


      }
       showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text("Thong bao"),
              content: Text("${message.code}  ${message.data.token}"),
              actions: [
                FlatButton(
                  child: Text("Ok"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            );
          });

    }
  @override
  void initState() {
    _errorMessage = "";
    _isLoading = false;
    _isLoginForm = true;
    super.initState();
  }

  void resetForm() {
    _formKey.currentState.reset();
    _errorMessage = "";
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return new Scaffold(

      body: Stack(
        children: <Widget>[
          SignUpPage(context,size),
          _showCircularProgress(),
        ],
      )

    );
  }

  Widget SignUpPage(context,size) {
    return new SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _showImage(size),
          Container(
            padding: EdgeInsets.all(4),
            child: new Form(
              key: _formKey,
              child: new ListView(
                shrinkWrap: true,
                children: <Widget>[
                  _showEmailInput(),
                  _showPasswordInput(),
                  _showLoginButton(context),
                  _showForgetPassword(),
                Divider(
                  height: 50,
                  indent: 30,
                  endIndent: 30,
                  thickness: 1,
                  color: Colors.grey,
                ),
                  _showSignIn(context),
                  showErrorMessage(),
                ],
              ),

            ),
          )

        ],

      ),
    );
  }

  Widget _showImage(Size size) {
    return new Container (
        child: Image.asset("assets/123.PNG",
          width: size.width,
          height: 250,
          fit: BoxFit.fill,
        ));
  }
  Widget showErrorMessage() {
    if (_errorMessage.length > 0 && _errorMessage != null) {
      return new Text(
        _errorMessage,
        style: TextStyle(
            fontSize: 13.0,
            color: Colors.red,
            height: 1.0,
            fontWeight: FontWeight.w300),
      );
    } else {
      return new Container(
        height: 0.0,
      );
    }
  }
  Widget _showEmailInput() {
    return new Container(
        padding: EdgeInsets.only(top: 6, left: 30, right: 30, bottom: 6),
        child: TextFormField(
          maxLines: 1,
          autofocus: false,
          decoration: InputDecoration(
              labelText: 'Số điện thoại hoặc email',
              labelStyle: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue))),
          validator: (value) => value.isEmpty ? 'Phone không thể trống' : null,
          onSaved: (value) => _phoneNumber = value.trim(),
        )
    );
  }

  Widget _showPasswordInput() {
    return new Container(
      padding: EdgeInsets.only(left: 30, right: 30, bottom: 12),
      child: TextFormField(
        maxLines: 1,
        obscureText: true,
        autofocus: false,
        decoration: InputDecoration(

            labelText: 'Mật khẩu', //label cua truong nhap du lieu
            labelStyle: TextStyle(
              //style cua label
                fontSize: 20,
                fontFamily: 'Montserrat', // kieu chu
                fontWeight: FontWeight.bold, // in dam
                color: Colors.grey), // mau sac
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue))),
        validator: (value) => value.isEmpty ? 'Mật khẩu không thể trống' : null,
        onSaved: (value) => _password = value.trim(), // nhap mat khau sau 1 khoang thoi gian thi no se che di
      ),
    );
  }

  Widget _showLoginButton(context) {
    return new Container(
      padding: EdgeInsets.only(left: 30, top: 4, bottom: 10, right: 30),
      height: 55.0,
      child: Material(
        borderRadius: BorderRadius.circular(8.0),

        color: Colors.blue,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
            validateAndSubmit();
            if(message.data.token != null)
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginFb(token:message.data.token)));
              }

          },
          child: Center(
            child: Text(
              'Đăng nhập',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),

    );
  }

  Widget _showForgetPassword() {
    return new Container(
      padding: EdgeInsets.only(top: 7, bottom: 7),
      child: Center(

        child: InkWell(
          child: Text(
            'Quên mật khẩu',
            style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat',
                decoration: TextDecoration.underline),
          ),
        ),

      ),
    );
  }

  Widget _showSignIn(context) {
    return new Container(
      padding: EdgeInsets.only(left: 60, top: 4, bottom: 10, right: 60),
      height: 55.0,
      child: Material(
        borderRadius: BorderRadius.circular(8.0),

        color: Colors.green,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => signUp()));


          },
          child: Center(
            child: Text(
              'Tạo tài khoản Facebook mới',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ),
      ),
    );
  }
  Widget _showCircularProgress() {
    if (_isLoading) {
      return Center(child: CircularProgressIndicator());
    }
    return Container(
      height: 0.0,
      width: 0.0,
    );
  }
}
class MessageLogin{
  int code;
  String message;
  DataReturn data;
  MessageLogin({this.code,this.message, this.data});
  factory MessageLogin.fromJson(Map<String, dynamic> json) {
    return MessageLogin(
        code: json['code'],
        message: json['message'].toString(),
      data: DataReturn.fromJson(json['data'])

    );
  }
}
class DataReturn{
  int id;
  String token;
  String avatar;
  String active;
  DataReturn({this.id,this.token, this.active, this.avatar});
  factory DataReturn.fromJson(Map<String, dynamic> json) {
    return DataReturn(
      id: json['id'],
      token: json['token'].toString(),
      avatar: json['avatar'].toString(),
      active: json['active'].toString()

    );
  }
}

