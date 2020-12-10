import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AnotherProfile extends StatefulWidget {
  @override
  _AnotherProfileState createState() => _AnotherProfileState();
}

class _AnotherProfileState extends State<AnotherProfile> {
  final String _fullName = " Pham Linh Chi";
  final String _status = "Hoa oải hương";
  final String _bio = "\"Em đã làm gì có người yêu? Em còn đang sợ ế đây này\"";
  final String _followers = "173";
  final String _posts = "24";
  final String _scores = "450";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text(
          'Profile',
        ),
      ),
      body: ProfilePage(
          context, _fullName, _status, _bio, _followers, _posts, _scores),
    );
  }

  Widget _buildProfileImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
      child: Container(
        width: double.infinity,
        height: 240,
        child: Container(
          alignment: Alignment(0.0, 2.5),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'),
            radius: 80.0,
          ),
        ),
      ),
    );
  }

  Widget _buildFullName(_fullName) {
    TextStyle _nameTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 28.0,
      fontWeight: FontWeight.w700,
    );

    return Text(
      _fullName,
      style: _nameTextStyle,
    );
  }

  Widget showMessages() {
    Size size = MediaQuery.of(context).size;
    return new Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
          height: 60,
          width: size.width * 0.6,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Color.fromRGBO(23, 119, 242, 1))),
            color: Color.fromRGBO(23, 119, 242, 1),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 35),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.message,
                    size: 24,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Nhan tin",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 7, left: 7),
          height: 60,
          width: size.width * 0.18,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(
                  color: Color.fromRGBO(229, 230, 235, 1),
                )),
            onPressed: () {},
            color: Color.fromRGBO(229, 230, 235, 1),
            child: Icon(
              Icons.person_add,
              size: 26,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 7),
            height: 60,
            width: size.width * 0.18,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: BorderSide(
                    color: Color.fromRGBO(229, 230, 235, 1),
                  )),
              onPressed: () {},
              color: Color.fromRGBO(229, 230, 235, 1),
              child: Icon(
                Icons.settings,
                size: 26,
              ),
            ))
      ],
    );
  }

  Widget showAddFriends() {
    Size size = MediaQuery.of(context).size;
    return new Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10, right: 10),
          height: 60,
          width: size.width * 0.6,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Color.fromRGBO(23, 119, 242, 1))),
            color: Color.fromRGBO(23, 119, 242, 1),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 35),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.person_add,
                    size: 24,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Them ban be",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 7, left: 7),
          height: 60,
          width: size.width * 0.18,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(
                  color: Color.fromRGBO(229, 230, 235, 1),
                )),
            onPressed: () {},
            color: Color.fromRGBO(229, 230, 235, 1),
            child: Icon(
              Icons.person_add,
              size: 26,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 7),
            height: 60,
            width: size.width * 0.18,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: BorderSide(
                    color: Color.fromRGBO(229, 230, 235, 1),
                  )),
              onPressed: () {},
              color: Color.fromRGBO(229, 230, 235, 1),
              child: Icon(
                Icons.settings,
                size: 26,
              ),
            ))
      ],
    );
  }

  Widget showAnser() {
    Size size = MediaQuery.of(context).size;
    return new Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 15, top: 10, bottom: 10, right: 10),
          height: 60,
          width: size.width * 0.6,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(color: Color.fromRGBO(23, 119, 242, 1))),
            color: Color.fromRGBO(23, 119, 242, 1),
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.only(left: 30),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.group,
                    size: 24,
                    color: Colors.white,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: Text(
                      "Tra loi",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, right: 7, left: 7),
          height: 60,
          width: size.width * 0.18,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6.0),
                side: BorderSide(
                  color: Color.fromRGBO(229, 230, 235, 1),
                )),
            onPressed: () {},
            color: Color.fromRGBO(229, 230, 235, 1),
            child: Icon(
              Icons.person_add,
              size: 26,
            ),
          ),
        ),
        Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 7),
            height: 60,
            width: size.width * 0.18,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6.0),
                  side: BorderSide(
                    color: Color.fromRGBO(229, 230, 235, 1),
                  )),
              onPressed: () {},
              color: Color.fromRGBO(229, 230, 235, 1),
              child: Icon(
                Icons.settings,
                size: 26,
              ),
            ))
      ],
    );
  }

  Widget showInfomationUser() {
    return new Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 15, top: 15, bottom: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.work,
                    size: 24,
                    color: Colors.black45,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 4, left: 15),
                    child: Text(
                      "Đã làm việc tại",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Text(
                      "GameCenter vv",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 15, top: 15, bottom: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.work,
                    size: 24,
                    color: Colors.black45,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 4, left: 15),
                    child: Text(
                      "Đã làm việc tại",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Text(
                      "GameCenter vv",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 15, top: 15, bottom: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.work,
                    size: 24,
                    color: Colors.black45,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 4, left: 15),
                    child: Text(
                      "Đã làm việc tại",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Text(
                      "GameCenter vv",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding:
                  EdgeInsets.only(left: 15, top: 15, bottom: 10, right: 10),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.work,
                    size: 24,
                    color: Colors.black45,
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 4, left: 15),
                    child: Text(
                      "Đã làm việc tại",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    child: Text(
                      "GameCenter vv",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }

  Widget CardFriend(String image, String name, int banchung) {
    print('1');
    Size size = MediaQuery.of(context).size;
    return new Card(
      child: Column(
        children: <Widget>[
          Container(

            height: 100,
            width: size.width*0.5,
            child: Image.asset(image),
          ),
          Container(
            padding: EdgeInsets.all(5),
            child: Text("${name}"),
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: Text("${banchung} ban chung"),
          )
        ],
      ),
    );
  }

  Widget showFriend() {
    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              child:   Text(
                "Ban be",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "800 (29 ban chung)",
                style: TextStyle(fontSize: 18),
              ),
            )


          ],
        ),
        GridView.count(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          crossAxisCount: 3,
          primary: false,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          childAspectRatio: 0.8,
          children: <Widget>[
            CardFriend("assets/ImagePost/1.jpg", "linh chi", 40),
            CardFriend("assets/ImagePost/2.jpg", "linh chi", 40),
            CardFriend("assets/ImagePost/3.jpg", "linh chi", 40),
            CardFriend("assets/ImagePost/4.jpg", "linh chi", 40),
            CardFriend("assets/ImagePost/5.jpg", "linh chi", 40),
            CardFriend("assets/ImagePost/6.jpg", "linh chi", 40),
          ],
        )
      ],
    );
  }

  Widget ProfilePage(
      context, _fullName, _status, _bio, _followers, _posts, _scores) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  _buildProfileImage(),
                  SizedBox(height: 65),
                  _buildFullName(_fullName),
                  showMessages(),
                  showAddFriends(),
                  showAnser(),
                  showInfomationUser(),
                  showFriend()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
