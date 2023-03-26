import 'package:flutter/material.dart';
import 'package:pet_app/animal_screen.dart';
import 'configuration.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xoffset = 0;
  double yoffset = 0;
  double scalefactor = 1;
  bool isdraweropen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(isdraweropen ? 20 : 0),
        color: Colors.white,
      ),
      transform: Matrix4.translationValues(xoffset, yoffset, 0)
        ..scale(scalefactor),
      // .. is a cascade notation allow you to make a sequence of operations on the same object
      duration: const Duration(milliseconds: 250),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      // the next column is the home page
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            // the first part of the home page => our customized app bar
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isdraweropen
                      ? IconButton(
                          onPressed: () {
                            setState(() {
                              xoffset = 0;
                              yoffset = 0;
                              scalefactor = 1;
                              isdraweropen = false;
                            });
                          },
                          icon: const Icon(Icons.arrow_back_ios))
                      : IconButton(
                          icon: const Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              xoffset = 230;
                              yoffset = 150;
                              // the next line mean: home screen should be 60% of the screen before
                              scalefactor = 0.6;
                              isdraweropen = true;
                            });
                          },
                        ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Location'),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.location_on),
                            color: primarycolor,
                          ),
                          const Text('Gaza, Palestine'),
                        ],
                      ),
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                ],
              ),
            ),
            // the second part of the home page => the text field section
            Container(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: TextField(
                  decoration: InputDecoration(
                    // without taping on the text field the next will be shown
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    // when we tap on the text field the next will be shown
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30)),
                        borderSide: BorderSide(color: primarycolor)),
                    prefixIcon: Icon(
                      Icons.search,
                      color: primarycolor,
                    ),
                    hintText: "Search Pet",
                    filled: true,
                    fillColor: const Color.fromARGB(255, 227, 217, 217),
                  ),
                )),
            // the third part of the home page => the list view section
            SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: ((context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.only(left: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Image.asset(
                            categories[index]['iconPath'],
                            height: 50,
                            width: 50,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Center(child: Text(categories[index]['name'])),
                      ],
                    );
                  }),
                )),
            // the fourth part of the home page => the 3D Pet Row section
            // we used the GestureDetector to help us with navigation
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnimalScreen()));
              },
              child: Container(
                height: 240,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                        child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              boxShadow: listShadow,
                              borderRadius: BorderRadius.circular(20)),
                          //  the next margin will help the 3D shape
                          margin: const EdgeInsets.only(top: 50),
                        ),
                        Align(
                          // we gonna use Hero() to help with some animation with the image
                          child: Hero(
                            tag: 1,
                            child: Image.asset('images/pet-cat2.png'),
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.only(top: 60, bottom: 20),
                      padding: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: listShadow,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text(
                                'Sola',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
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
                          const Text(
                            'Abyssinian Cat',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Color.fromARGB(255, 66, 66, 66)),
                          ),
                          const Text(
                            '2 years old',
                            style: TextStyle(
                                color: Color.fromARGB(255, 122, 120, 120)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.location_on,
                                    color: primarycolor),
                                onPressed: () {},
                              ),
                              const Text(
                                'Distance 2.6 km',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 66, 66, 66)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 240,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                      child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                            boxShadow: listShadow,
                            borderRadius: BorderRadius.circular(20)),
                        //  the next margin will help the 3D shape
                        margin: const EdgeInsets.only(top: 50),
                      ),
                      Align(
                        child: Image.asset('images/pet-cat1.png'),
                      )
                    ],
                  )),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(top: 60, bottom: 20),
                    padding: const EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: listShadow,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            const Text(
                              'Orion',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.male,
                                  color: primarycolor,
                                  size: 30,
                                )),
                          ],
                        ),
                        const Text(
                          'Abyssinian Cat',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromARGB(255, 66, 66, 66)),
                        ),
                        const Text(
                          '1.5 years old',
                          style: TextStyle(
                              color: Color.fromARGB(255, 122, 120, 120)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon:
                                  Icon(Icons.location_on, color: primarycolor),
                              onPressed: () {},
                            ),
                            const Text(
                              'Distance 7.8 km',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 66, 66, 66)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
