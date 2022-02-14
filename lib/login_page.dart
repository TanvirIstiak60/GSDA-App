import 'dart:ui';

import 'package:flutter/material.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({ Key? key }) : super(key: key);

  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Image.asset(
            'images/logo_globalskills-1.png',
            height: 90.0,
            width: 210.0,
          ),
        ),
        body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 250.0,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/coverPhoto.jpg'),
                      fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 200,
              child: Container(
                height: 430,
                width: MediaQuery.of(context).size.width - 40,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15.0,
                      spreadRadius: 5,
                    ),                  
                  ],
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.amberAccent,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            'Login to your ',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Account',
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Row(
                       children: [
                           const SizedBox(
                           width: 20.0,
                          ),
                          const Text(
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 15.0,
                            ),
                         ),
                         TextButton(
                           child: const Text(
                             'Create one here',
                             style: TextStyle(
                               color: Colors.redAccent,
                             ),
                           ),
                           onPressed: () {},
                         ),
                       ], 
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal:25.0),
                        child: Column(
                          children: [
                            builtTextField(Icons.mail, 'Email', true, false),
                            builtTextField(Icons.password, 'Password', false, true),
                          ],
                        ),  
                      ),
                    ],
                  ),
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget builtTextField(IconData icon, String hintText, isEmail, isPassword) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
                              keyboardType: isEmail?TextInputType.emailAddress:TextInputType.text,
                              obscureText: isPassword,
                              cursorColor: Colors.black,
                              autofocus: true,
                              decoration: InputDecoration(
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                border: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  icon,
                                  size: 35.0,
                                  color: Colors.grey,
                                ),
                                hintText: hintText,
                                hintStyle: const TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),                             
                            ),
    );
  }
}