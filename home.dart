import 'package:flutter/material.dart';
import 'cards.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'style.dart';
import 'button.dart';


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
          children:[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: ListView(
                scrollDirection: Axis.vertical,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  //Tulisan gede//
                  Text("Where do\nyou want to go?", style: blackTextStyle.copyWith(fontSize: 24),),
                  //Tulisan gede//

                  SizedBox(height: 20,),

                  //SearchBox//
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //SearchBox//
                        Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.78,
                          child: TextField(
                            style: searchBarText,
                            decoration: InputDecoration(
                            filled: true,
                            fillColor: Color(0xffffffff),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintText: "Cari yang kamu cari !",
                            prefixIcon: Icon(Icons.search),
                            prefixIconColor: Colors.black
                            ),
                          ),
                        ),
                        //SearchBox//

                        //Icon sebelah searchbox//
                        Container(
                          padding: const EdgeInsets.all(12),
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black)),
                          child: Icon(
                            Icons.map,
                            color: orangeColor,
                          ),
                        ),
                        //Icon sebelah searchbox//
                      ],
                    ),
                  ),
                 //SearchBox//

                //Category//
                SizedBox(height: 10,), 
                Text('Categories', style: blackTextStyle.copyWith(fontSize: 18),),
                SizedBox(height: 10,),
                Container(
                  child: Row(
                    children: [
                      ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return MyHomePage();
                                }));
                              },
                              style: buttonPrimary,
                                child: Text('Gunung', style: blackTextStyle3.copyWith(
                                  fontSize: 14,
                                )),
                              ),
                            SizedBox(width: 10,),
                            OutlinedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  return MyHomePage();
                                }));
                              },
                              style: buttonSecondary,
                                child: Text('Pantai', style: blackTextStyle3.copyWith(
                                  fontSize: 14,
                                )),
                              ),
                            ],
                          ),
                        ),
                //Category//

                //Cards Product//
                  SizedBox(height: 20,),
                  Text( 'Top Suggestions', style: blackTextStyle.copyWith(fontSize: 18),),
                  SizedBox(height: 10,),
                  SizedBox(
                    // width: double.infinity,
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      // padding: const EdgeInsets.all(0),
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        cards(),
                        cards2(),
                        cards3(),
                        cards4(),
                      ],
                    ),
                  ),
                  //Cards Product//

                  //Nearby//
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    width: double.maxFinite,
                    child: ListView(
                      children: [
                        Text('Nearby', style: blackTextStyle.copyWith(fontSize: 18),),
                        sized
                      ],
                    )
                    
                  ),
                  //Nearby//
                ],
              ),
            ),      
           ],        
      ),

bottomNavigationBar: GNav(
        gap: 10,
        activeColor: orangeColor,
        color: greyColor,
        padding: EdgeInsets.only(
          bottom: 20
        ),
        tabMargin: EdgeInsets.only(left: 24, right: 24),
        tabs: [
        GButton(icon: Icons.explore,
        text: 'Explore',),
        GButton(icon: Icons.groups,
        text: 'Community',),
        GButton(icon: Icons.storefront,
        text: 'Shop',),
        GButton(icon: Icons.account_circle_rounded,
        text: 'Profile',),
        
      ]),
    );
  }
}

  
