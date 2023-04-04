import 'package:flutter/material.dart';

import 'configuration.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 80, left: 10),
      color: primarycolor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // The first part of the drawer screen => row of avatart and name
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('images/me.jpg'),
                  )),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Mohammed Hasaballah',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    Text('Active Status',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
            ],
          ),
          // The second part of the drawer screen => column of icons and pages
          Column(
              children: drawerItem
                  .map((e) => Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            e['icon'],
                            color: Colors.white,
                            size: 30,
                          ),
                          const SizedBox(
                            height: 70,
                            width: 20,
                          ),
                          Text(
                            e['title'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                  .toList()),
          // The last part of the drawer screen => row of settings and log out
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings),
                color: Colors.white,
              ),
              const Text(
                'Settings',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 2,
                height: 20,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Log out',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
