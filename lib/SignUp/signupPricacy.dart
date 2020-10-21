import 'package:flutter/material.dart';
import 'package:uifacebook/profile.dart';
class signUpPrivacy extends StatefulWidget {
  @override
  _signUpPrivacyState createState() => _signUpPrivacyState();
}

class _signUpPrivacyState extends State<signUpPrivacy> {
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
}
Widget SignUpPage(context){
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
Widget _showText1(){
  return new Container(
        padding:  EdgeInsets.only(right: 20, left: 20, top: 40, bottom: 0),
        child: Center(
          child:Text(
            'Hoàn tất đăng ký',
            style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold

            ),
          ),
        ));
}
Widget _showText2(){
  return new Container(
    padding: EdgeInsets.only(right: 20,left: 20,top: 20),

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
Widget _showButton(context){
  return new Container(
    padding: EdgeInsets.only(right: 20, left: 20, top:30, bottom: 0),
    height: 70.0,
    child: Material(
      borderRadius: BorderRadius.circular(20.0),
      shadowColor: Colors.blueAccent,
      color: Colors.blue,
      elevation: 7.0,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Profile()));

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
Widget _showText3(){
  return new Container(
    padding: EdgeInsets.only(right: 20,left: 20,top: 80),

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
