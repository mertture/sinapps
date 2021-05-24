import 'package:sinapps/routes/feedpage.dart';
import 'package:sinapps/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:sinapps/models/user.dart';
import 'package:sinapps/models/post.dart';
import 'package:sinapps/models/PostCard.dart';
import 'package:sinapps/routes/editProfile.dart';
import 'package:sinapps/models/location.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:sinapps/models/littlePostCard.dart';
import 'package:sinapps/routes/settingspage.dart';
import 'package:sinapps/routes/bottomNavBar.dart';
import 'package:sinapps/routes/welcome.dart';
import 'package:sinapps/routes/login.dart';
import 'package:sinapps/routes/setProfile.dart';
import 'package:sinapps/routes/walkthrough.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sinapps/net/firestore_methods.dart';

class Profile extends StatefulWidget {
  const Profile({Key key, this.analytics, this.observer}) : super(key: key);

  final FirebaseAnalytics analytics;
  final FirebaseAnalyticsObserver observer;

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final controller = PageController(initialPage: 0);

  List<dynamic> followers = [];
  List<dynamic> following = [];
  String username = "",
      fullname = "",
      phoneNumber = "",
      photoUrl = "",
      description = "",
      uid = "";
  List<dynamic> postsUser = [];
  bool profType;
  //var userInff;
  user currentUser;
  void _loadUserInfo() async {
    FirebaseAuth _auth;
    User _user;
    _auth = FirebaseAuth.instance;
    _user = _auth.currentUser;
    var x = await FirebaseFirestore.instance
        .collection('users')
        .where('uid', isEqualTo: _user.uid)
        .get();

    //.then((QuerySnapshot querySnapshot) {
    // querySnapshot.docs.forEach((doc) async {
    //print(doc['username'] + " " + doc['fullname']);
    //print(doc.data()['username'])

    //});
    //});
    setState(() {
      username = x.docs[0]['username'];
      fullname = x.docs[0]['fullname'];
      followers = x.docs[0]['followers'];
      following = x.docs[0]['following'];
      phoneNumber = x.docs[0]['phoneNumber'];
      photoUrl = x.docs[0]['photoUrl'];
      description = x.docs[0]['description'];
      postsUser = x.docs[0]['posts'];
      profType = x.docs[0]['profType'];
      uid = x.docs[0]['uid'];
    });
    //print(username);

/*
  user _currentUser = user(
      username: username,
      fullname: fullname,
      followers: followers,
      following: following,
      posts: postsUser,
      description: description,
      photoUrl: photoUrl,
      phoneNumber: phoneNumber);*/
    //print(x.docs[0]['username']);
    //print(x);
    //return _currentUser;
  }

  //user profUser = user(username: 'm', fullname: 'Mert Türe',
  //  followers: 0, following: 0, posts: 3, description: 'Orthopedics in Acıbadem', photoUrl: 'lib/images/mert.jpeg');
  //final String currentUserId = profUser.username;
  List<Post> posts = [
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post1.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'Rhinoplasty journal',
        date: '23 April 2021',
        likes: 83,
        dislikes: 7,
        comments: 38),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post2.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'Surgery vibes',
        date: '12 February 2021',
        likes: 52,
        dislikes: 5,
        comments: 17),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post3.jpeg",
        location: Location(country: "Turkey", city: 'Koç'),
        text: 'Blood samples are carring everything that we need.',
        date: '2 January 2021',
        likes: 31,
        dislikes: 4,
        comments: 7),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post4.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text:
            '"The good physician treats the disease; the great physician treats the patient who has the disease." - William Osler',
        date: '23 April 2020',
        likes: 99,
        dislikes: 8,
        comments: 14),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post5.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'MR, MR and MR...',
        date: '28 December 2020',
        likes: 37,
        dislikes: 2,
        comments: 24),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post6.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'Guys... Do not smoke',
        date: '23 December 2020',
        likes: 42,
        dislikes: 9,
        comments: 19),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post7.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'ER nights...',
        date: '22 June 2020',
        likes: 93,
        dislikes: 5,
        comments: 21),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post8.png",
        location: Location(country: "Germany", city: 'Munich'),
        text: 'Hallo aus Deutschland',
        date: '17 April 2020',
        likes: 35,
        dislikes: 6,
        comments: 15),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post9.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'The structural points of chest',
        date: '15 April 2020',
        likes: 57,
        dislikes: 3,
        comments: 17),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post10.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'Some tips of foot rontgens',
        date: '2 April 2020',
        likes: 87,
        dislikes: 5,
        comments: 32),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post11.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'What could be more miracle than newbornie?',
        date: '7 March 2020',
        likes: 78,
        dislikes: 7,
        comments: 13),
    Post(
        username: 'mertture0',
        userUrl: "lib/images/mert.jpeg",
        photoUrl: "lib/images/post12.jpeg",
        location: Location(country: "Turkey", city: 'Acıbadem'),
        text: 'We have empty beds in ER tonight.',
        date: '9 January 2020',
        likes: 132,
        dislikes: 8,
        comments: 23),
  ];
  @override
  void initState() {
    super.initState();
    //print(x.docs[0]['username']);
    _loadUserInfo();
    //print("AAAAAAAAAAAAAAAA");
  }

  Widget build(BuildContext context) {
    currentUser = user(
        username: username,
        fullname: fullname,
        followers: followers,
        following: following,
        posts: postsUser,
        description: description,
        photoUrl: photoUrl,
        phoneNumber: phoneNumber,
        profType: profType,
        uid: uid);
    //_loadUserInfo();
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
            toolbarHeight: 48.0,
            title: Text(
              username,
              style: TextStyle(
                fontFamily: 'BrandonText',
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey[800],
            elevation: 0.0,
            automaticallyImplyLeading: false,
            actions: <Widget>[
              IconButton(
                color: Colors.grey[300],
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
              ),
            ]),
        body: Container(
          padding: EdgeInsets.fromLTRB(20.0, 24.0, 20.0, 0.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        'Followers',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '${followers.length}',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(photoUrl),
                    radius: 56.0,
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Following',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                      Text(
                        '${following.length}',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '${fullname}',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 3.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(
                        '${description}',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 3.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 90,
                        height: 40,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey[750],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            side:
                                BorderSide(width: 2, color: AppColors.primary),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 2),
                            child: Text(
                              'Subcribed Topics',
                              style: TextStyle(
                                fontFamily: 'BrandonText',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context) => Topics()));
                          },
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        'Posts',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontFamily: 'BrandonText',
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        '${postsUser.length}',
                        style: TextStyle(
                          fontFamily: 'BrandonText',
                          fontSize: 24.0,
                          fontWeight: FontWeight.w800,
                          color: AppColors.primary,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 90,
                        height: 40,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.grey[750],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            side:
                                BorderSide(width: 2, color: AppColors.primary),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 2, horizontal: 2),
                            child: Text(
                              'Edit Profile',
                              style: TextStyle(
                                fontFamily: 'BrandonText',
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: AppColors.textColor,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        EditProfile(currentUser: currentUser)));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              Divider(
                color: Colors.grey[800],
                height: 20,
                thickness: 2.0,
              ),
              //PageView(
              //controller: controller,
              //scrollDirection: Axis.horizontal,
              //children: <Widget>[
              //Column(
              //children: <Widget>[
              //SizedBox(height: 8.0,),
              Expanded(
                //crossAxisAlignment: CrossAxisAlignment.center,

                child: PageView(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    // First View
                    Stack(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.grey[700],
                              size: 12,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.grey[350],
                              size: 9,
                            ),
                          ]),
                      //SizedBox(height: 20.0),
                      /*Container(
                            padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                            width:double.infinity,
                            child: SingleChildScrollView(
                              child: Column(

                                children: posts.map((post) => littlePostCard(
                                    post: post,
                                )).toList(),

                              ),
                            ),

                          ),*/
                      //padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                      //SizedBox(height: 20.0),
                      GridView.count(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        crossAxisCount: 3,
                        children: posts.map((post) {
                          return Container(
                              margin: EdgeInsets.all(2.0),
                              decoration: BoxDecoration(
                                //padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                                image: DecorationImage(
                                  image: AssetImage(post.photoUrl),
                                  fit: BoxFit.fill,
                                ),
                              ),
                              height: 150.0);
                        }).toList(),
                      ),
                    ]),

                    // Second View
                    Stack(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.circle,
                              color: Colors.grey[350],
                              size: 9,
                            ),
                            Icon(
                              Icons.circle,
                              color: Colors.grey[700],
                              size: 12,
                            ),
                          ]),
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 16, 0, 0),
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: posts
                                .map((post) => PostCard(
                                    post: post,
                                    delete: () {
                                      setState(() {
                                        posts.remove(post);
                                      });
                                    }))
                                .toList(),
                          ),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
              //],
              //),
              //],
            ],
          ),
        ),
      ),
    );
  }
}
