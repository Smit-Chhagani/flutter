import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mobile_design/SignUpPage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/login.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 335),
                  child: Text(
                    'Fashion  fade\nstyle is eternal',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'Schyler',
                    ),
                  ),
                ),
                //SizedBox(height: 350),
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/mail.jfif',
                          height: 20,
                        ),
                        // SizedBox(width: 10),
                        Text(
                          '   Sign up with mail',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      // Perform Google Sign In here
                    },
                  ),
                ),
                // SizedBox(height: 20),
                Container(
                  width: 300,
                  height: 50,
                  margin: EdgeInsets.only(top: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black,
                  ),
                  child: TextButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'assets/facebooklogo.webp',
                          height: 30,
                        ),
                        // SizedBox(width: 10),
                        Text(
                          '   Continue with Facebook',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    onPressed: () {
                      // Perform Facebook Sign In here
                    },
                  ),
                ),
                Container(
                  width: 300,
                  height: 50,
                  //margin: EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Text(
                        'Already have account?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          //fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                        },
                        child: Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
