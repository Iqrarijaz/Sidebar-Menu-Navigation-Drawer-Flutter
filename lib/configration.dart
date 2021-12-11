import 'package:flutter/material.dart';
import 'package:drawerproject1/configration.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
List<BoxShadow> shadowList = [
  BoxShadow(color: Colors.grey, blurRadius: 30, offset: const Offset(0, 10))
];

List <Map>catagories=[
  {
    "name":"Cat","iconPath":"assets/cat.png"
  },
  {
    "name":"Dog","iconPath":"assets/dog.png"
  },
  {
    "name":"Horse","iconPath":"assets/horse.png"
  },
  {
    "name":"Elephant","iconPath":"assets/elephant.png"
  },
  {
    "name":"Loin","iconPath":"assets/lion.png"
  }
];
List<Map> drawerItems=[
  {
    'icon':FontAwesomeIcons.home,
    'title':'Home'
  },
  {
    'icon':FontAwesomeIcons.search,
    'title':'Search'
  },

  {
    'icon':FontAwesomeIcons.paw,
    'title':'Adoption'
  },
  {
    'icon':Icons.mail,
    'title':'Donation'
  },
  {
    'icon':FontAwesomeIcons.plus,
    'title':'Add Pet'
  },
  {
    'icon':Icons.favorite,
    'title':'Favorites'
  },
  {
    'icon':FontAwesomeIcons.share,
    'title':'Share'
  },

];