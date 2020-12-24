import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:uifacebook/SignUp/signupPass.dart';
import 'signupPricacy.dart';

class signUpDate extends StatefulWidget {
  String phone;
  String firstName;
  String lastName;
  String date;
  String male;
  @override
  _signUpDateState createState() => _signUpDateState();
  signUpDate({Key key, this.phone, this.firstName, this.lastName, this.male}) : super(key: key);

}

class _signUpDateState extends State<signUpDate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('Ngày sinh', style: TextStyle(fontSize: 22,fontWeight:FontWeight.w600, color: Colors.black),),
        backgroundColor: Colors.white,
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
    child: Center(
      child:  Text(
        'Sinh nhật của bạn khi nào',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22,fontWeight: FontWeight.bold,
            color: Colors.black87
        ),
      ),
    ) ,

  );
}
Widget _showButton(context){
  print('11');
  return new Container(
    padding: EdgeInsets.only(right: 20, left: 20, top: 120, bottom: 0),
    height: 170.0,
    child: Material(
      borderRadius: BorderRadius.circular(8.0),

      color: Color.fromRGBO(24, 119, 242, 1),
      child: GestureDetector(

        onTap: () {
          if(widget.date!= null)
          {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUpPass(phone: widget.phone,firstName:widget.firstName,lastName:widget.lastName,date:widget.date, male:widget.male)));
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

Widget _showDateTime(context) {
  print('11');
  return FlatButton(
      onPressed: () {
        DatePicker.showDatePicker(context,
            showTitleActions: true,
            minTime: DateTime(1930, 1, 1),
            maxTime: DateTime(2013, 12, 31),
            theme: DatePickerTheme(
                headerColor: Colors.blue,
                backgroundColor: Colors.white,
                itemStyle: TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18),
                doneStyle: TextStyle(color: Colors.white, fontSize: 16)),
            onChanged: (date) {
              print('change $date in time zone ' + date.timeZoneOffset.inHours.toString());
            }, onConfirm: (date) {
          widget.date = date.toString();
              print('confirm $date');
            }, currentTime: DateTime.now(), locale: LocaleType.en);
      },
      child: Center(
        child:  Text(
          'Bạn hãy chọn ngày sinh của mình',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blue,fontSize: 20),
        ),
      )
     );
}
}