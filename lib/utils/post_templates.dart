import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sinapps/models/post.dart';

List<Post> posts = [
  Post(
      username: 'mertture0',
      userid: 'yMqc1i5yWoMgoO4URFYWMeyCNGb2',
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'Rhinoplasty journal',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2019-08-20 20:19:04Z"),
      likes: ["yMqc1i5yWoMgoO4URFYWMeyCNGb2"],
      comments: [""],
  ),

  Post(
      username: 'atmacaa',
      userid: 'SeQsNhsfcHdJwHZOAkgOnr4XGJH2',
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'Surgery vibes',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2019-08-20 20:19:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'akali',
      userid: "qCKg5kAVLPWFnZLSj3eQzojp2KF3",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'Blood samples are carring everything that we need.',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2019-08-20 20:19:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
    topics: ["1", "2", "3"]
  )
  ,
  Post(
      username: 'jwill',
      userid: "nL7f9j3QRIW9xXcCjooxKttTFmI2",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title:
      '"The good physician treats the disease; the great physician treats the patient who has the disease." - William Osler',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'jwill',
      userid: "nL7f9j3QRIW9xXcCjooxKttTFmI2",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'MR, MR and MR...',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'akali',
      userid: "qCKg5kAVLPWFnZLSj3eQzojp2KF3",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'Guys... Do not smoke',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-10-21 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'atmacaa',
      userid: 'SeQsNhsfcHdJwHZOAkgOnr4XGJH2',
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'ER nights...',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'atmacaa',
      userid: 'SeQsNhsfcHdJwHZOAkgOnr4XGJH2',
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'Hallo aus Deutschland',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'mertture0',
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'The structural points of chest',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'akali',
      userid: "qCKg5kAVLPWFnZLSj3eQzojp2KF3",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'Some tips of foot rontgens',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'akali',
      userid: "qCKg5kAVLPWFnZLSj3eQzojp2KF3",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'What could be more miracle than newbornie?',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2", "qCKg5kAVLPWFnZLSj3eQzojp2KF3"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
  Post(
      username: 'akali',
      userid: "qCKg5kAVLPWFnZLSj3eQzojp2KF3",
      userPhotoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/profilepictures%2Fimage_picker1106899808823982220.png?alt=media&token=202dbbf4-a495-4480-8f4b-4476ec54a8de",
      photoUrl: "https://firebasestorage.googleapis.com/v0/b/sinapps0.appspot.com/o/post_pictures%2Fimage_picker582110343215944148.jpg?alt=media&token=1d8eb348-1ba5-4550-8639-270c3f493cc9",
      location: GeoPoint(21, 24),
      title: 'We have empty beds in ER tonight.',
      content: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.",
      date: DateTime.parse("2021-08-20 20:05:04Z"),
      likes: ["SeQsNhsfcHdJwHZOAkgOnr4XGJH2", "yMqc1i5yWoMgoO4URFYWMeyCNGb2"],
      comments: [""],
      topics: ["1", "2", "3"]
  ),
];