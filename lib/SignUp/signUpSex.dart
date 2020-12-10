import 'package:flutter/material.dart';
import 'package:uifacebook/SignUp/signupDate.dart';
import 'package:uifacebook/SignUp/signupName.dart';
import 'package:uifacebook/SignUp/signupPhone.dart';

class signUpSex extends StatefulWidget {
  String phone;
  String firstName;
  String lastName;
  String sexUser;

  signUpSex({Key key, this.phone, this.firstName, this.lastName}) : super(key: key);
  @override
  _signUpSexState createState() => _signUpSexState();
}

class _signUpSexState extends State<signUpSex> {
  List<Sex> sexs;
  Sex selectedSex;
  @override
  void initState() {
    super.initState();
    sexs = Sex.getSexs();
  }

  setSelectedSex(Sex sex) {
    setState(() {
      selectedSex = sex;
    });
  }
  List<Widget> createRadioListSexs() {
    List<Widget> widgets = [];
    for (Sex user in sexs) {
      widgets.add(
        RadioListTile(
          value: user,
          groupValue: selectedSex,
          title: Text(user.name),
          subtitle: Text(user.info
          ),
          onChanged: (currentSex) {
            setSelectedSex(currentSex);
          },
          selected: selectedSex == user,
          activeColor: Colors.green,
        ),
      );
    }
    return widgets;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Gioi Tinh',),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          _showText1(),
          _showText2(),
          Column(
            children: createRadioListSexs(),
          ),
          _showButton(context)
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
        ,style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
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
            fontSize: 16
        ),
      ),
    ),
  );
}

Widget _showButton(context){
  return Container(
    padding: EdgeInsets.only(right: 20, left: 20, top: 120, bottom: 0),
    height: 160.0,
    child: Material(
      borderRadius: BorderRadius.circular(20.0),
      shadowColor: Colors.blueAccent,
      color: Colors.blue,
      elevation: 7.0,
      child: GestureDetector(
        onTap: () {
          widget.sexUser = selectedSex.name;
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUpDate(phone: widget.phone,firstName:widget.firstName,lastName:widget.lastName)));

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