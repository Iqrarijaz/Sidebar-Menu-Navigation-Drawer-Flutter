// ignore_for_file: prefer_const_constructors

import 'package:drawerproject1/configration.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFector = 1;
  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(

      decoration: BoxDecoration(
          color: context.canvasColor,
        borderRadius: BorderRadius.circular(isDrawerOpen?40:0.0)
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFector),
      duration: Duration(milliseconds: 250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    isDrawerOpen
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFector = 1;
                                isDrawerOpen = false;
                              });
                            },
                            icon: Icon(Icons.arrow_back_ios))
                        : IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFector = 0.6;
                                isDrawerOpen = true;
                              });
                            }),
                    Column(
                      children: [
                        "Location".text.make(),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: context.theme.primaryColor,
                            ),
                            "Pakistan".text.make()
                          ],
                        ),
                      ],
                    ),
                    CircleAvatar(
                      backgroundColor: context.accentColor,
                    )
                  ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: context.cardColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.search),
                  "Search pet to adopt".text.make(),
                  Icon(Icons.settings),
                ],
              ),
            ),
            //separated widget for icons header where animals icon are showun
            IconBar(),
            SizedBox(height: 0,),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailScreen()));
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 240,
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[300],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.only(top: 40),
                        ),
                        Align(
                          child: Image.asset("assets/cat1.png"),
                        )
                      ],
                    )),
                    Expanded(
                        child: Container(
                      margin: EdgeInsets.only(top: 60, bottom: 20),
                      decoration: BoxDecoration(
                          color: context.cardColor,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                    ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: 240,
              child: Row(
                children: [
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        margin: EdgeInsets.only(top: 40),
                      ),
                      Align(
                        child: Image.asset("assets/dog1.png"),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(top: 60, bottom: 20),
                    decoration: BoxDecoration(
                        color: context.cardColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        )),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}

class IconBar extends StatefulWidget {
  @override
  _IconBarState createState() => _IconBarState();
}

class _IconBarState extends State<IconBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: catagories.length,
        itemBuilder: (context, index) {
          return Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: context.cardColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    catagories[index]['iconPath'],
                    height: 50,
                    width: 50,
                    color: Colors.grey[600],
                  ),
                ),
                Text(catagories[index]['name'], style: TextStyle())
              ],
            ),
          );
        },
      ),
    );
  }
}
