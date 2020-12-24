import 'package:flutter/material.dart';
import 'package:uifacebook/SignUp/signUpSex.dart';
import 'package:uifacebook/SignUp/signupDate.dart';
import 'package:uifacebook/SignUp/signupName.dart';

class signUpPhone extends StatefulWidget {
  @override
  _signUpPhoneState createState() => _signUpPhoneState();
  signUpPhone({Key key, this.firstName, this.lastName}) : super(key: key);
  String phone;
  String firstName;
  String lastName;

}

class _signUpPhoneState extends State<signUpPhone> {
  final _formKey = new GlobalKey<FormState>();
  TextEditingController phoneController = TextEditingController();
  String phone;

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
        phone = phoneController.text;
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
        title: Text('Số di động', style: TextStyle(fontSize: 22,fontWeight:FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: SignUpPhonePage(context,phoneController,_formKey),
    );
  }

Widget SignUpPhonePage(context, phoneController,_formKey){
  return new Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
        Form(
          key:_formKey,
          child: Column(
            children: <Widget>[
              _showText(),
              _showPhoneField(phoneController),
              _showButton(context)
            ],
          ),
        )

    ],
  );
}
Widget _showText(){
  return new Container(
    padding: EdgeInsets.only(top: 50, left: 0, right: 0),
    child: Center(
      child: Text(
        'Nhập số di động của bạn',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black
        ),
      ),
    ),
  );
}
Widget _showPhoneField(phoneController){
  return new Container(
    padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
    child: TextFormField(
      controller: phoneController,
        decoration: InputDecoration(
        labelText: 'Số di động',
        labelStyle: TextStyle(
          fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(153, 156, 160, 1)),
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(24, 119, 242, 1)))),
        validator: (value) => value.isEmpty ? 'Vui lòng nhập vào một số điện thoại hợp lệ' : null,
        onSaved: (value) => phone = value.trim()
  ));
}
Widget _showButton(context){
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
         if(phone != null)
           {
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUpSex(phone: phone,firstName:widget.firstName,lastName: widget.lastName)));
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
