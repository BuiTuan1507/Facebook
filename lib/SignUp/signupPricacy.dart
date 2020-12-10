import 'dart:io';

import 'package:flutter/material.dart';
import 'package:uifacebook/LoginFb.dart';
import 'package:uifacebook/profile.dart';
import "package:http/http.dart" as http;
import 'dart:async';
import 'dart:convert';
class signUpPrivacy extends StatefulWidget {
  String phone;
  String pass;
  String firstName;
  String lastName;
  @override
  _signUpPrivacyState createState() => _signUpPrivacyState();
  signUpPrivacy({Key key, this.phone,this.pass,this.firstName, this.lastName}) : super(key: key);
}

class _signUpPrivacyState extends State<signUpPrivacy> {

  String _errorMessage;
  bool _isLoading;
  bool _isLoginForm;
  MessageLogin message;
  //kiem tra xem form da valid hay chua


  //submit
  void validateAndSubmit() async {

    setState(() {
      _errorMessage = "";
      _isLoading = true;
    });
      try
      {
        print(widget.firstName);

        print(widget.lastName);
        print(widget.phone);
        print(widget.pass);
        final http.Response response = await http.post(
          'http://7bc8a6686fac.ngrok.io/api/signup',
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{
            "phonenumber": widget.phone,
            "password": widget.pass,
            "uuid": widget.firstName+ widget.lastName

          }),
        );


        setState(() {
          _isLoading = false;
        });
        message = MessageLogin.fromJson(json.decode(response.body));
        if(message !=  null){
          loginAfterSignUp();
        }
        print(message);
      }catch(e){
        print("Error : $e");
        setState(() {
          _isLoading = false;
          _errorMessage = e.message;

        });
      }
    (_errorMessage != null ) ? showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Thông báo"),
            content: Text("Số điện thoại bạn nhập không đúng"),
            actions: [
              FlatButton(
                child: Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        }): Container(height: 0,);

  }
  void loginAfterSignUp()async{
    final http.Response response = await http.post(
      ' http://7bc8a6686fac.ngrok.io/api/login',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        "phonenumber": widget.phone,
        "password": widget.pass

      }),
    );
  }
  @override
  void initState() {
    _errorMessage = "";
    _isLoading = false;
    _isLoginForm = true;
    super.initState();
  }

  void resetForm() {
    _errorMessage = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Dieu Khoan & quyen rieng tu',),
        centerTitle: true,
      ),
      body: SignUpPage(context),
    );
  }

  Widget SignUpPage(context) {
    return new SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _showText1(),
          _showText2(),
          _showText3(),
          _showButton(context)
        ],

      ),
    );
  }

  Widget _showText1() {
    return new Container(
        padding: EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 0),
        child: Center(
          child: Text(
            'Hoàn tất đăng ký',
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.bold

            ),
          ),
        ));
  }

  Widget _showText2() {
    return new Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 20),

      child: Text(
        'Bằng cách nhấn vào Đăng ký, bạn đồng ý vói Điều khoản, Chính sách dữ liệu và Chính sách cookie của chúng tôi.Bạn có thể nhận được thông'
            ' báo của chúng tôi qua SMS và chọn không nhận bất cứ lúc nào. Thông tin từ danh bạ của bạn sẽ được tải lên Facebook liên tục để chúng tôi có'
            ' thể gợi ý bạn bè, cung cấp và cải thiện quảng cáo cho bạn và người khác, cũng như mang đến dịch vụ tốt hơn.',
        style: TextStyle(
            fontSize: 16
        ),
        textAlign: TextAlign.center,


      ),
    );
  }

  Widget _showButton(context) {
    return new Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 30, bottom: 0),
      height: 70.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.blueAccent,
        color: Colors.blue,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) => LoginFb()));
            validateAndSubmit();
          },
          child: Center(
            child: Text(
              'Đăng ký',
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

  Widget _showText3() {
    return new Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 80),

      child: Text(
        'Thông tin liên hệ trong danh bạ của bạn, bao gồm tên, số điện thoại và biệt danh, sẽ được gửi tới facebook để Chúng tôi có thể gợi ý bạn bè, '
            ' cung cấp và cải thiện quảng cáo cho bạn và người khác, cũng như mang đến dịch vụ tốt hơn. Bạn có thể tắt tính năng này trong phần Cài đặt, quản lý hoặc xóa bỏ thông tin liên hệ với mình đã chia sẻ cho Facebook. Tìm hiểu thêm',
        style: TextStyle(
            fontSize: 14
        ),
        textAlign: TextAlign.center,


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
}
class MessageLogin{
  int code;
  String message;
  MessageLogin({this.code,this.message});
  factory MessageLogin.fromJson(Map<String, dynamic> json) {
    return MessageLogin(
      code: json['code'],
      message: json['message'].toString(),

    );
  }
}
