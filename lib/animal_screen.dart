import 'package:flutter/material.dart';
import 'package:pet_app/configuration.dart';

class AnimalScreen extends StatelessWidget {
  const AnimalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Column(
          children: [
            Expanded(
                child: Container(
              color: Colors.blueGrey,
            )),
            Expanded(
                child: Container(
              color: Colors.white,
              child: Container(
                padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/girl.jpg'),
                              radius: 25,
                            )),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Maya Berkovskaya',
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 41, 40, 40),
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 70,
                                ),
                                Text(
                                  'March 23, 2023',
                                  style: TextStyle(
                                      color: textcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Text(
                              'Owner',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: textcolor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 20, left: 8),
                      child: Text(
                          'My job requires moving to anothe country. I don\'t have the opportunity to take the cat with me. I am looking for good people who will shelter my Sola. ',
                          softWrap: true,
                          style: TextStyle(
                              color: textcolor, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            )),
          ],
        )),
        Container(
          margin: const EdgeInsets.only(top: 50),
          child: Align(
            alignment: Alignment.topCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.upload_outlined),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Hero(
              tag: 1,
              child: Image.asset('images/pet-cat2.png'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 150,
            padding: const EdgeInsets.only(top: 10, left: 30, right: 10),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: listShadow,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Sola',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.female,
                          color: primarycolor,
                          size: 30,
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Abyssinian Cat',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Color.fromARGB(255, 66, 66, 66)),
                    ),
                    Text(
                      '2 years old',
                      style:
                          TextStyle(color: Color.fromARGB(255, 122, 120, 120)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.location_on,
                        color: primarycolor,
                      ),
                      onPressed: () {},
                    ),
                    const Text(
                      '5 Bulvarno-Kudriavsko Street, Kyiv',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 66, 66, 66)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 100,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 227, 224, 224),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: primarycolor,
                  ),
                  child: const Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 50,
                    // width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primarycolor,
                    ),
                    child: const Center(
                      child: Text(
                        'Adoption',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
