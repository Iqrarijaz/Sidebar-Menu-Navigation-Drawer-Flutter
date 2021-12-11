import 'package:drawerproject1/configration.dart';
import 'package:drawerproject1/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50, bottom: 50, left: 20),
      color: context.theme.primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 35,
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "User Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 26),
                    ),
                    Text(
                      "Active Status",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            child: Column(
              children: drawerItems
                  .map((element) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                          children: [
                            Icon(
                              element['icon'],
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              element['title'],
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                  ))
                  .toList(),
            ),
          ),
          Container(
            child: Row(
              children: [
                const Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                "Settings".text.bold.xl2.color(Colors.white).make(),
                const SizedBox(width: 15),
                Container(
                  height: 20,
                  width: 2,
                  color: Colors.white,
                ),
                const SizedBox(width: 15),
                "Log out".text.bold.xl2.color(Colors.white).make(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
