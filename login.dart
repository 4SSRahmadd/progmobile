import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/home.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 4,
                    color: const Color(0xffff9900),
                  ),
                  borderRadius: BorderRadius.circular(360.0),
                ),
                // child: Image.asset(
                //   'assets/images/logo_1.jpg',
                // ),
                child: ClipOval(
                  child: Image.asset('assets/images/logo_1.jpg'),
                ),
              ),
              const SizedBox(height: 100.0),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffff9900),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Column(
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        // const MyApp();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const MyHomePage()),
                        );

                      },
                      child: const Text(
                        'LOGEENNN',
                        style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
