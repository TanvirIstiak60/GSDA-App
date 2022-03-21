import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_page.dart';

class SignUp extends StatelessWidget {
  const SignUp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    //Declaring media query for responsive UI
    var signUpHeight = MediaQuery.of(context).size.height;
    var signUpWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
          title: Image.asset(
            'images/logo_globalskills-1.png',
            height: 90.0,
            width: 210.0,
          ),
          leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop(
            MaterialPageRoute(builder: ((context) => const HomePage())),
          );
        }, 
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: signUpHeight/3.8,
              width: signUpWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'images/coverPhotoGSDA.gif',
                  ), 
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 235,
            child: Container(
              height: signUpHeight/2,
              width: signUpWidth - 40,
              margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      blurRadius: 15.0,
                      spreadRadius: 5,
                    ),                  
                  ],
                ),
                child: SingleChildScrollView(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 20.0,
                            ),
                            Text(
                              '|',
                              style: GoogleFonts.raleway(
                                fontSize: 30.0,
                                color: Colors.amberAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Sign Up ',
                              style: GoogleFonts.raleway(
                                fontSize: 25.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Now',
                              style: GoogleFonts.raleway(
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
                            Text(
                              "Already have an account! ",
                              style: GoogleFonts.raleway(
                                fontSize: 15.0,
                              ),
                           ),
                           TextButton(
                             child: Text(
                               'Login here',
                               style: GoogleFonts.raleway(
                                 color: Colors.redAccent,
                               ),
                             ),
                             onPressed: () {},
                           ),
                         ], 
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal:20.0),
                          child: Column(
                            children: <Widget>[
                              builtTextField(Icons.person_outline ,'Enter your name', false, false),
                              builtTextField(Icons.mail, 'Email', true, false),
                              builtTextField(Icons.mobile_friendly, 'Enter your phone number', false, false),
                              builtTextField(Icons.password, 'Password', false, true),
                              builtTextField(Icons.password, 'Confirm Password', false, true),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: (){}, 
                                  child: Text(
                                    'Sign Up',
                                    style: GoogleFonts.raleway(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.amber,
                                    onPrimary: Colors.red, 
                                  ),
                                ),
                              ),
                            ],
                          ),  
                        ),
                      ],
                    ),
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
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
                                hintStyle: GoogleFonts.raleway(
                                  fontSize: 20.0,
                                ),
                              ),                             
                            ),
    );
  }
