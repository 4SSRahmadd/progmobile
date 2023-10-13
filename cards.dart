import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart';

class cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: 
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
                  
    );
  }
}

class cards2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: 
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
                  
    );
  }
}

class cards3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: 
          Container(
                    width: 175,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)
                                ),
                            child: Image(image: AssetImage('assets/images/image_4.jpg'),
                            fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Arjuna', style: blackTextStyle.copyWith(fontSize: 14),),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on, color: Color(0xffff9900),size: 12,),
                                    Text('Malang, Indonesia',style: blackTextStyle3.copyWith(fontSize: 12),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),
                  
    );
  }
}
class cards4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: 
          Container(
                    width: 175,
                    margin: EdgeInsets.only(right: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.black26)),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8)
                                ),
                            child: Image(image: AssetImage('assets/images/panderman.jpg'),
                            fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Panderman', style: blackTextStyle.copyWith(fontSize: 14),),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on, color: Color(0xffff9900),size: 12,),
                                    Text('Malang, Indonesia',style: blackTextStyle3.copyWith(fontSize: 12),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ]),
                  ),     
    );
  }
}
