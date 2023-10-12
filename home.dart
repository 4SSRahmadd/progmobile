import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _MyHomepageState();
}
class _MyHomepageState extends State<MyHomePage> {
  int _index = 0; 

Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.my_location,
          color: Color(0xffff9900),
        ),
        title: const Text(
          'Jakarta, Indonesia',
          style: TextStyle(fontSize: 14),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.notifications,
              color: Color(0xffff9900),
            ),
          )
        ],
      ),
      body: IndexedStack(
           index: _index,
           children: [
Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: ListView(
          scrollDirection: Axis.vertical,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              margin: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Where do\nyou want to go?',
                style: GoogleFonts.poppins(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: TextField(
                      style: GoogleFonts.poppins(
                        color: const Color(0xff020202),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5,
                      ),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.black26, width: 1),
                        ),
                        prefixIcon: const Icon(Icons.search),
                        prefixIconColor: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black)),
                    child: Icon(
                      Icons.map,
                      color: Color(0xffff9900),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16, bottom: 8),
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                        fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: Color(0xffff9900),
                            borderRadius: BorderRadius.circular(4)),
                        child: Text('Gunung'),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        margin: const EdgeInsets.only(right: 8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(color: Colors.black26)),
                        child: Text('Pantai'),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 16, bottom: 8),
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Top Suggestions',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                  ],
                )),
            SizedBox(
              // width: double.infinity,
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                // padding: const EdgeInsets.all(0),
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    width: 175,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child: Image(
                              image: AssetImage('assets/images/image_1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Semeru',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xffff9900),
                                      size: 12,
                                    ),
                                    Text('Malang, Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    width: 175,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child: Image(
                              image: AssetImage('assets/images/image_3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Bromo',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xffff9900),
                                      size: 12,
                                    ),
                                    Text('Malang, Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    width: 175,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child: Image(
                              image: AssetImage('assets/images/image_4.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Arjuno',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xffff9900),
                                      size: 12,
                                    ),
                                    Text('Malang, Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    width: 175,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child: Image(
                              image: AssetImage('assets/images/image_1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Semeru',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xffff9900),
                                      size: 12,
                                    ),
                                    Text('Malang, Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  Container(
                    width: 175,
                    margin: const EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)),
                            child: Image(
                              image: AssetImage('assets/images/image_1.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Semeru',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Color(0xffff9900),
                                      size: 12,
                                    ),
                                    Text('Malang, Indonesia',
                                        style: TextStyle(
                                          fontSize: 12,
                                        )),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16),
              width: double.maxFinite,
              child: Text(
                'Nearby',
                style: GoogleFonts.poppins(
                    fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),      
           ],        
      ),
   
//BOTTOM NAVIGATION
        bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xffff9900),
        onTap: (int index){
          setState(() {
            _index = index;
          });
        },
        items: const <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

  