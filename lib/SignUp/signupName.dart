import 'package:flutter/material.dart';
import 'package:uifacebook/SignUp/signupPhone.dart';

class signUpName extends StatefulWidget {
  @override
  _signUpNameState createState() => _signUpNameState();
}

class _signUpNameState extends State<signUpName> {
  String firstName;
  String lastName;
  final _formKey = new GlobalKey<FormState>();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
  void validateAndSubmit() {
    if (validateAndSave()) {
      setState(() {
        firstName = firstNameController.text;
        lastName = lastNameController.text;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('Tên', style: TextStyle(fontSize: 22,fontWeight:FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SignUpNamePage(context),
    );
  }

  Widget SignUpNamePage(context) {
    return new Column(
      children: <Widget>[
        _showTextName(),
        Form(
          key: _formKey,
          child:  Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  _showFirstNameField(context)
                ],
              ),
              Column(
                children: <Widget>[
                  _showLastNameField(context)
                ],
              ),

            ],
          ),
        ),

        _showButton(context)
      ],
    );
  }

  Widget _showTextName() {
    return new Container(
      padding: EdgeInsets.only(top: 30, right: 0, left: 0),
      child: Text(
        'Bạn tên gì',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 23, fontWeight: FontWeight.bold,
            color: Colors.black
        ),
      ),
    );
  }

  Widget _showFirstNameField(context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return new Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      width: width * 0.5,
      child: TextFormField(
        controller: firstNameController,
        decoration: InputDecoration(
            labelText: 'HỌ',
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(153, 156, 160, 1)),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(24, 119, 242, 1)))),
        validator: (value) => value.isEmpty ? 'Vui lòng nhập họ của bạn' : null,
        onSaved: (value) => firstName = value.trim(),
      ),
    );
  }

  Widget _showLastNameField(context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return new Container(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      width: width * 0.5,
      child: TextFormField(
        controller: lastNameController,
        decoration: InputDecoration(
            labelText: 'TÊN',
            labelStyle: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(153, 156, 160, 1),
            ),

            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Color.fromRGBO(24, 119, 242, 1)))),
        validator: (value) => value.isEmpty ? 'Vui lòng nhập tên của bạn' : null,
        onSaved: (value) => lastName = value.trim(),

      ),

    );
  }

  Widget _showButton(context) {
    return new Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 120, bottom: 0),
      height: 170.0,
      child: Material(
        borderRadius: BorderRadius.circular(8.0),

        color: Color.fromRGBO(24, 119, 242, 1),
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
            validateAndSubmit();
            if((firstName != null) && (lastName != null)){
              Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext context) => signUpPhone(firstName:firstName,lastName:lastName)));
            }

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