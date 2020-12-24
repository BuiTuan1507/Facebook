import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:uifacebook/SignUp/signupPricacy.dart';

class signUpPass extends StatefulWidget {
  String phone;
  String pass;
  String firstName;
  String lastName;
  String date;
  String male;
  @override
  _signUpPassState createState() => _signUpPassState();
  signUpPass({Key key, this.phone,this.firstName, this.lastName, this.date, this.male}) : super(key: key);

}

class _signUpPassState extends State<signUpPass> {
  final _formKey = new GlobalKey<FormState>();
  TextEditingController passController = TextEditingController();
  String pass;

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
        pass = passController.text;
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
        title: Text('Mật khẩu', style: TextStyle(fontSize: 22,fontWeight:FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SignUpPassPage(context),
    );
  }

  Widget SignUpPassPage(context) {
    return new Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _showText(),
          _showPasswordField(),
          _showButton(context)
        ],

      ),
    );
  }

  Widget _showText() {
    print('1');
    return new Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 70, bottom: 0),
      child: Center(
        child: Text(
          'Chọn mật khẩu',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold

          ),
        ),
      ),

    );
  }

  Widget _showPasswordField() {
    print('1');
    return new Container(
        padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: TextFormField(
          controller: passController,
          decoration: InputDecoration(
              labelText: 'Mật Khẩu',
              labelStyle: TextStyle(
                fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color.fromRGBO(24, 119, 242, 1)))),
          validator: (value) => value.isEmpty ? 'Password can\'t be empty' : null,
          onSaved: (value) => pass = value.trim(),
        ));
  }

  Widget _showButton(context) {
    print('1');
    return new Container(
      padding: EdgeInsets.only(right: 20, left: 20, top: 50, bottom: 0),
      height: 100.0,
      child: Material(
        borderRadius: BorderRadius.circular(8.0),
          color: Color.fromRGBO(24, 119, 242, 1),
        child: GestureDetector(
          onTap: () {
            validateAndSubmit();
            if(pass != null)
              {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUpPrivacy(phone: widget.phone,pass: pass,firstName:widget.firstName,lastName:widget.lastName,date:widget.date, male:widget.male)));

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