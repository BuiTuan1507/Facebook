import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final String _fullName = " Pham Linh Chi";
  final String _status = "Hoa oải hương";
  final String _bio =
      "\"Em đã làm gì có người yêu? Em còn đang sợ ế đây này\"";
  final String _followers = "173";
  final String _posts = "24";
  final String _scores = "450";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Profile',),
      ),
      body: ProfilePage(context,_fullName,_status,_bio,_followers,_posts,_scores),
    );
  }
}


  Widget _buildProfileImage() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/background.jpg'),


              fit: BoxFit.cover
          )
      ),
      child: Container(
        width: double.infinity,
        height: 200,
        child: Container(
          alignment: Alignment(0.0,2.5),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'),
            radius: 60.0,
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

  Widget _buildStatus(BuildContext context,_status) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 6.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Text(
        _status,
        style: TextStyle(
          fontFamily: 'Spectral',
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildStatItem(String label, String count) {
    TextStyle _statLabelTextStyle = TextStyle(
      fontFamily: 'Roboto',
      color: Colors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.w200,
    );

    TextStyle _statCountTextStyle = TextStyle(
      color: Colors.black54,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          count,
          style: _statCountTextStyle,
        ),
        Text(
          label,
          style: _statLabelTextStyle,
        ),
      ],
    );
  }

  Widget _buildStatContainer(_followers,_posts,_scores) {
    return Container(
      height: 60.0,
      margin: EdgeInsets.only(top: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFEFF4F7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildStatItem("Followers", _followers),
          _buildStatItem("Posts", _posts),
          _buildStatItem("Likes", _scores),
        ],
      ),
    );
  }

  Widget _buildBio(BuildContext context,_bio) {
    TextStyle bioTextStyle = TextStyle(
      fontFamily: 'Spectral',
      fontWeight: FontWeight.w400,//try changing weight to w500 if not thin
      fontStyle: FontStyle.italic,
      color: Color(0xFF799497),
      fontSize: 16.0,
    );

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.all(8.0),
      child: Text(
        _bio,
        textAlign: TextAlign.center,
        style: bioTextStyle,
      ),
    );
  }

  Widget _buildSeparator(Size screenSize) {
    return Container(
      width: screenSize.width / 1.6,
      height: 2.0,
      color: Colors.black54,
      margin: EdgeInsets.only(top: 4.0),
    );
  }

  Widget _buildGetInTouch(BuildContext context,_fullName) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      padding: EdgeInsets.only(top: 8.0),
      child: Text(
        "Vào trang của tui làm gì đấy? ${_fullName.split(" ")[0]},",
        style: TextStyle(fontFamily: 'Roboto', fontSize: 16.0),
      ),
    );
  }

  Widget _buildButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () => print("followed"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text(
                    "FOLLOW",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: InkWell(
              onTap: () => print("Message"),
              child: Container(
                height: 40.0,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "MESSAGE",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget _ImageProfile(){
    return new  GridView.count(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      crossAxisCount: 3,
      primary: false,
      crossAxisSpacing: 10.0,
      mainAxisSpacing: 15.0,
      childAspectRatio: 0.8,
      children: <Widget>[
       Image.asset('assets/ImagePost/1.jpg'),
        Image.asset('assets/ImagePost/2.jpg'),
        Image.asset('assets/ImagePost/3.jpg'),
        Image.asset('assets/ImagePost/4.jpg'),
        Image.asset('assets/ImagePost/5.jpg'),
        Image.asset('assets/ImagePost/6.jpg'),


      ],
    );
  }

  Widget ProfilePage(context,_fullName,_status,_bio,_followers,_posts,_scores) {
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
                  _buildStatus(context,_status),
                  _buildStatContainer(_followers,_posts,_scores),
                  _buildBio(context,_bio),
                  _buildSeparator(screenSize),
                  SizedBox(height: 10.0),
                  _buildGetInTouch(context,_fullName),
                  SizedBox(height: 8.0),
                  _buildButtons(),
                  SizedBox(height: 15,),
                  _ImageProfile()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
