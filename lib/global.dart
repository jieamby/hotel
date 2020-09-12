import 'package:flutter/material.dart';

class Warna {
  static Color darkBlue = Color(0xff2446a6),
  lightBlue = Color(0xff3a5fc8),
  red = Color(0xfffa9d85);
}

class User {
  static String fullname = "panda",
  profilePicture = "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqYkpgckiOHAFWwdtYLjbLZ0jIJLkng8IaDQ&usqp=CAU";
}

class DestinationModel {
  final String placeName, imageUrl, date, hotelName;
  DestinationModel({this.placeName, this.date, this.imageUrl, this.hotelName});
}
final List<DestinationModel> destinationslist = [
  DestinationModel(
  date: "01 Aug, 2020",
  hotelName:"The Alana",
  imageUrl: "https://www.alanahotels.com/en/hotel/view/2/the-alana-yogyakarta-hotel---convention-center",
  placeName: "Sleman",
),
DestinationModel(
  date: "01 Aug, 2020",
  hotelName:"Cordela Hotel",
  imageUrl: "http://omegahotelmanagement.com/cordelahotels/kartikadewi/",
  placeName: "Yogyakarta",
),
DestinationModel(
  date: "01 Aug, 2020",
  hotelName:"d'Omah hotel",
  imageUrl: "https://yogyakartaaccommodation.com/id/beranda/",
  placeName: "Bantul",
),
];

