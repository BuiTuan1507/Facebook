import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddImage extends StatefulWidget {
  @override
  _AddImageState createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Them anh cua ban",style: TextStyle(fontSize: 20),),
        actions: [
          Container(
            padding: EdgeInsets.only(top: 15),
            child:  InkWell(
              onTap: (){},
              child: Text(
                "Bo qua",style: TextStyle(fontSize: 16),
              ),
            ),
          )

        ],
      ),
      body: Column(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                child: Text("Hãy thêm ảnh đại diện để bạn",style: TextStyle(fontSize: 24),),
              ),
              Container(
                child: Text("bè dễ dàng tìm thấy bạn hơn",style: TextStyle(fontSize: 24),),
              )
            ],
          ),
          Container(
            height: size.height*0.3,
            width: size.width*0.6,
            child: Image.asset("assets/anhnull.PNG",fit: BoxFit.fill,),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Container(

                  height: 40,
                  width: size.width*0.65,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(24, 119, 242,1)
                  ),
                  child: Container(
                      padding: EdgeInsets.only(top: 7,left: 10),
                      child: Container(
                        padding: EdgeInsets.only(left: size.width*0.2,top: 4),
                        child:  Text("Chọn ảnh từ thư viện",style: TextStyle(fontSize: 18,color: Colors.white),),
                      )

                  )

              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(

                  height: 40,
                  width: size.width*0.65,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(237, 243, 255, 1)
                  ),
                  child: Container(
                      padding: EdgeInsets.only(top: 7,left: 10),
                      child: Container(
                        padding: EdgeInsets.only(left: size.width*0.27,top: 4),
                        child:  Text("Chụp ảnh",style: TextStyle(fontSize: 18,color: Color.fromRGBO(24, 119, 242,1)),),
                      )

                  )

              )
            ],
          ),



        ],
      ),
    );
  }
}
