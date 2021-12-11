// ignore_for_file: prefer_const_constructors

import 'package:drawerproject1/screens/drawer_screen.dart';
import 'package:drawerproject1/screens/home_screen.dart';
import 'package:drawerproject1/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      //light theme self defined
      darkTheme: MyTheme.darkTheme(context),
      home: HomeStack(),

    );
  }
}
class HomeStack extends StatelessWidget {
  const HomeStack({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: (Stack(
        children: [DrawerScreen(), HomeScreen()],
      )),
    );
  }
}

