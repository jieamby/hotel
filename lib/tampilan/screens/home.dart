import 'package:flutter/material.dart';
import 'package:aplikasi_hotel/global.dart';
import 'package:aplikasi_hotel/tampilan/screens/detail.dart';
import 'package:aplikasi_hotel/tampilan/widgets/bottombar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2446a6),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              height: MediaQuery.of(context).size.height / 3,
              child: Row(
                children: <Widget>[
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Color(0xff4169d8),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Color(0xff3a5fc8),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 70,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                    Text(
                      "My Profile",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: Row(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(5),
                                    child: Image.network(
                                      User.profilePicture,
                                      fit: BoxFit.cover,
                                      height: 35,
                                      width: 35,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text(
                                    "${User.fullname}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(
                                            color: Warna.darkBlue,
                                            fontWeightDelta: 2),
                                  ),
                                  Spacer(),
                                  IconButton(
                                    icon: Icon(
                                      Icons.menu,
                                      color: Warna.red,
                                    ),
                                    onPressed: () {},
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "1500",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline
                                          .apply(
                                              color: Warna.darkBlue,
                                              fontWeightDelta: 2),
                                    ),
                                    TextSpan(
                                      text: "Points",
                                      style: Theme.of(context)
                                          .textTheme
                                          .body2
                                          .apply(color: Warna.darkBlue),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Container(
                              padding: const EdgeInsets.all(25.0),
                              color: Warna.red,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      "Next Trip",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline
                                          .apply(color: Colors.white),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "29",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline
                                        .apply(color: Colors.white),
                                  ),
                                  Text(
                                    "Nov",
                                    style: Theme.of(context)
                                        .textTheme
                                        .body1
                                        .apply(color: Colors.white),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "My Bookings",
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .apply(color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: destinationslist.length,
                        itemBuilder: (ctx, i) {
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => DetailScreens(id: i),
                              ),
                            ),
                            child: Container(
                              width: 150,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 11.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned.fill(
                                      child: Image.network(
                                        destinationslist[i].imageUrl,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 9.0, vertical: 5.0),
                                        decoration: BoxDecoration(
                                          color: Warna.lightBlue,
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text(
                                                "${destinationslist[i].placeName}",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white)),
                                            Text(
                                              "${destinationslist[i].date}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .subtitle
                                                  .apply(color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              height: 70,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(11.0),
                child: MyBottomBar(),
              ),
            )
          ],
        ),
      ),
    );
  }
}