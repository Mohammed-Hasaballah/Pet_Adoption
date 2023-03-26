import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Color primarycolor = Color(0xff416d6d);
Color textcolor = Color.fromARGB(255, 160, 155, 155);

List<BoxShadow> listShadow = [
  BoxShadow(color: Colors.grey[200]!, blurRadius: 30, offset: Offset(0, 10)),
];

List<Map> categories = [
  {'name': 'Cat', 'iconPath': 'images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'images/dog.png'},
  {'name': 'horses', 'iconPath': 'images/horse.png'},
  {'name': 'parrot', 'iconPath': 'images/parrot.png'},
  {'name': 'rabbit', 'iconPath': 'images/rabbit.png'},
];

List<Map> drawerItem = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': FontAwesomeIcons.house, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add Pet'},
  {'icon': Icons.favorite, 'title': 'Faviorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userLarge, 'title': 'Profile'},
];
