import 'package:flutter/material.dart';
import 'SignUp/signup.dart';
class signIn extends StatefulWidget {
  @override
  _signInState createState() => _signInState();
}

class _signInState extends State<signIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Facebook',style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,color: Colors.blue),),
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
        _showImage(),
        _showEmailInput(),
        _showPasswordInput(),
        _showLoginButton(),
        _showForgetPassword(),
        _showSignIn(context)
      ],

    ),
  );
}
Widget _showImage(){
  return new Container (
    child: Image.asset("assets/123.PNG" ,
      width: 410,
      height: 220,
      fit:BoxFit.fill,
  ));
}
Widget _showEmailInput(){
  return new Container(
    padding: EdgeInsets.only(top: 10, left: 20, right: 10, bottom: 10),
    child:  TextFormField(
      decoration: InputDecoration(
          labelText: 'Email hoặc số điện thoại',
          labelStyle: TextStyle(
            fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
              color: Colors.grey),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
    )
  );


}
Widget _showPasswordInput(){
  return new Container(
    padding: EdgeInsets.only(left: 20,right: 20, bottom: 20),
    child:  TextFormField(     // field nhap mat khau
      decoration: InputDecoration(

          labelText: 'Mật khẩu',   //label cua truong nhap du lieu
          labelStyle: TextStyle(
            //style cua label
            fontSize: 20,
              fontFamily: 'Montserrat',  // kieu chu
              fontWeight: FontWeight.bold, // in dam
              color: Colors.grey),  // mau sac
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.blue))),
      obscureText: true,// nhap mat khau sau 1 khoang thoi gian thi no se che di
    ),
  );

}
Widget _showLoginButton(){
  return new Container(
      padding: EdgeInsets.only(left: 20,top: 10,bottom: 20,right: 20),
      height: 80.0,
      child: Material(
        borderRadius: BorderRadius.circular(20.0),
        shadowColor: Colors.blueAccent,
        color: Colors.blue,
        elevation: 7.0,
        child: GestureDetector(
          onTap: () {
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
Widget _showForgetPassword(){
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
Widget _showSignIn(context){
 return new Container(
   child:  Center(
     child:   Row(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Text(
           'Chưa có tài khoản ?',
           style: TextStyle(fontFamily: 'Montserrat',fontSize: 18),
         ),
         SizedBox(width: 10.0),
         InkWell(
           onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => signUp()));
           },
           child: Text(
             'Đăng ký',
             style: TextStyle(
                 color: Colors.blue,
                 fontSize: 20,
                 fontFamily: 'Montserrat',
                 fontWeight: FontWeight.bold,
                 decoration: TextDecoration.underline),
           ),
         )
       ],
     )
   ),
 );


}
