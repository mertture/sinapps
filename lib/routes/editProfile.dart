import 'package:flutter/material.dart';
import 'package:sinapps/models/user.dart';
import 'package:sinapps/routes/profilepage.dart';
// import 'package:cached_network_image/cached_network_image.dart';

class EditProfile extends StatefulWidget {
  //List <bool> _selections = List.generate(2, (_) => false);
  const EditProfile({Key key, this.currentUser}) : super(key: key);

  final user currentUser;

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController displayNameController = TextEditingController();
  TextEditingController displayUsernameController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  bool isLoading = false;

  /*user profUser = user(
      username: 'mertture0',
      fullname: 'Mert Türe',
      followers: [],
      following: [],
      posts: [],
      description: 'Orthopedics in Acıbadem',
      photoUrl: 'lib/images/mert.jpeg',
      phoneNumber: '+905553332211');*/

  //this.User.photoUrl = 'lib/images/cat.jpg';
  List<bool> _selections = List.generate(2, (_) => false);
  @override
  void initState() {
    super.initState();
    //print(widget.currentUser.username);
//    getUser();
  }

/*
  getUser() async {
    setState(() {
      isLoading = true;
    });
    DocumentSnapshot doc = await usersRef.document(widget.currentUserId).get();
    user = User.fromDocument(doc);
    displayNameController.text = user.displayName;
    bioController.text = user.bio;
    setState(() {
      isLoading = false;
    });
  }
*/
  Column buildDisplayNameField() {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Fullname",
              style: TextStyle(color: Colors.grey),
            )),
        TextField(
          controller: displayNameController,
          decoration: InputDecoration(
            hintText: "${widget.currentUser.fullname}",
          ),
        )
      ],
    );
  }

  Column buildDisplayUsernameField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Username",
              style: TextStyle(color: Colors.grey),
            )),
        TextField(
          controller: displayUsernameController,
          decoration: InputDecoration(
            hintText: "${widget.currentUser.username}",
          ),
        )
      ],
    );
  }

  Column buildPrivateField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Profile Visibility",
              style: TextStyle(color: Colors.grey),
            )),
        ToggleButtons(
          selectedColor: Colors.black,
          fillColor: Colors.grey[500],
          children: [
            Icon(Icons.lock),
            Icon(Icons.lock_open),
          ],
          onPressed: (int index) {
            setState(() {
              for (int buttonIndex = 0;
                  buttonIndex < _selections.length;
                  buttonIndex++) {
                if (buttonIndex == index) {
                  _selections[buttonIndex] = true;
                } else {
                  _selections[buttonIndex] = false;
                }
              }
            });
          },
          isSelected: _selections,
        )
      ],
    );
  }

  Column buildBioField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: EdgeInsets.only(top: 12.0),
            child: Text(
              "Description",
              style: TextStyle(color: Colors.grey),
            )),
        TextField(
          controller: bioController,
          decoration: InputDecoration(
            hintText: "${widget.currentUser.description}",
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontFamily: 'BrandonText',
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.0,
                    bottom: 8.0,
                  ),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(widget.currentUser.photoUrl),
                  ),
                ),
                TextButton(
                  child: Text('Change Profile Photo'),
                  onPressed: () {
                    print("ProfilePhotoChangeButton Pressed");
                  },
                ),
                Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Column(
                    children: <Widget>[
                      buildDisplayNameField(),
                      buildDisplayUsernameField(),
                      buildBioField(),
                      SizedBox(
                        height: 25,
                      ),
                      buildPrivateField(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                FlatButton(
                  onPressed: () => print('update profile data'),
                  color: Colors.grey[800],
                  child: Text(
                    "Update Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
