import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:uifacebook/SignUp/signupPass.dart';
import 'signupPricacy.dart';

class signUpDate extends StatefulWidget {
  String phone;
  String firstName;
  String lastName;
  @override
  _signUpDateState createState() => _signUpDateState();
  signUpDate({Key key, this.phone, this.firstName, this.lastName}) : super(key: key);

}

class _signUpDateState extends State<signUpDate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Ngay sinh'),
        centerTitle: true,
      ),
      body: SignUpDatePage(context),
    );
  }

Widget SignUpDatePage(context){
  print('11');
  return new  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          _showText(),
        _showDateTime(context),
        _showButton(context)
      ],


  );
}
Widget _showText(){
  print('11');
  print('11');
  return new Container(
    padding: EdgeInsets.only(top: 30,right: 0,left: 0),
    child: Text(
      'Sinh nhật của bạn khi nào',
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 22,fontWeight: FontWeight.bold,
          color: Colors.black87
      ),
    ),
  );
}
Widget _showButton(context){
  print('11');
  return new Container(
    padding: EdgeInsets.only(right: 20, left: 20, top: 120, bottom: 0),
    height: 160.0,
    child: Material(
      borderRadius: BorderRadius.circular(20.0),
      shadowColor: Colors.blueAccent,
      color: Colors.blue,
      elevation: 7.0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUpPass(phone: widget.phone,firstName:widget.firstName,lastName:widget.lastName)));

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

Widget _showDateTime(context) {
  print('11');
  return FlatButton(
      onPressed: () {
        DatePicker.showDatePicker(context,
            showTitleActions: true,
            minTime: DateTime(1930, 1, 1),
            maxTime: DateTime(2014, 1, 1),
            theme: DatePickerTheme(
                headerColor: Colors.blue,
                backgroundColor: Colors.white,
                itemStyle: TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
                doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
            onChanged: (date) {
              print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
            }, onConfirm: (date) {
              print('confirm $date');
            }, currentTime: DateTime.now(), locale: LocaleType.en);
      },
      child: Text(
        'Ban hay chon ngay sinh cua minh',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.blue,fontSize: 20),
      ));
}
}