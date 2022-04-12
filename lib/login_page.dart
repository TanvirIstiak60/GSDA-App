import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_challenge/cart_page.dart';
import 'package:ui_challenge/home_page.dart';
import 'package:ui_challenge/pages/signUp.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'dart:convert';
import 'package:get/get.dart';

// ignore: must_be_immutable
class UserLoginPage extends StatefulWidget {

  //Declaring Text Editing Controller 
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  //Creating function for Navigating to the home page after our Textfiels validation
  Future login(BuildContext cont) async {
    var url = "http://localhost:8080/localConnection/login.php";
    var response = await http.post(Uri.parse(url), body:{
      "email" : userEmail.text,
      "password" : userPassword.text,
    });
    // ignore: avoid_print
    print(userEmail.text);
    // ignore: avoid_print
    print('body: [${response.body}]');

      if( json.decode(response.body) == "success"){

        //Shared preferences for storing data 
        var any = await SharedPreferences.getInstance();
        any.setString("email", json.decode(response.body));
        Get.off(const CartPage());

        Fluttertoast.showToast(msg: "Matched");
      }
      else{
        Fluttertoast.showToast(
        msg: "UserName or Password not matched!",
        toastLength: Toast.LENGTH_SHORT);
      }

    
  }

  

  Future <bool> tryAutoLogin() async{
    var any = await SharedPreferences.getInstance();
    if(!any.containsKey("email")){
      return false;
    }else{
      return true;
    }
  }

  static  logout() async{
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
    Get.off(()=> const HomePage());
  }

  UserLoginPage({Key? key}) : super(key: key);

  @override
  _UserLoginPageState createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> { 
  Future getData() async {
    http.Response response =  await http.get(Uri.parse("http://localhost:8080/localConnection/login.php"));
    debugPrint(response.body);
  }

  @override
  void initState() { 
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {

    //Media Query for more responsive UI 
    var loginPageHeight = MediaQuery.of(context).size.height;
    var loginPageWidth = MediaQuery.of(context).size.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Image.asset(
            'images/globalSkills.png',
            height: 70.0,
            width: 90.0,
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
                height: loginPageHeight/3.8,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'images/coverPhotoGSDA.gif'),
                      fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 210,
              child: Container(
                height: loginPageHeight/2,
                width: loginPageWidth - 40,
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
                              'Login to your ',
                              style: GoogleFonts.raleway(
                                fontSize: 25.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Account',
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
                              "Don't have an account? ",
                              style: GoogleFonts.raleway(
                                fontSize: 15.0,
                              ),
                           ),
                           TextButton(
                             child: Text(
                               'Create one here',
                               style: GoogleFonts.raleway(
                                 color: Colors.redAccent,
                               ),
                             ),
                             onPressed: () {
                               Navigator.of(context).push(
                                 MaterialPageRoute(builder: (context) => const SignUp()),
                               );
                             },
                           ),
                         ], 
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 80.0,
                          ),
                          child: Column(
                            children: [
                              Text(
                                'LOGIN USING',
                                style: GoogleFonts.raleway(
                                  color: Colors.black,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.yellow
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.google,
                                      color: Colors.red,
                                    ),
                                    Text(
                                      'GOOGLE ',
                                      style: GoogleFonts.raleway(
                                        color: Colors.red,
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.blue,                                  
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const FaIcon(
                                      FontAwesomeIcons.facebook,
                                    ),
                                    Text(
                                      'FACEBOOK',
                                      style: GoogleFonts.raleway(
                                        color: Colors.white,
                                        fontSize: 19.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          child: Center(
                            child: Text(
                              'Or GSDA native account',
                              style: GoogleFonts.raleway(
                                color: Colors.black,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 0.0, horizontal:20.0),
                          child: Column(
                            children: <Widget>[
                              TextField(
                                controller: widget.userEmail,
                                decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.email,
                                  size: 35.0,
                                  color: Colors.grey,
                                ),
                                hintText: 'Enter your email',
                                hintStyle: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),            
                              ),
                              TextField(
                                controller: widget.userPassword,
                                obscureText: true,
                                decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                prefixIcon: Icon(
                                  Icons.password,
                                  size: 35.0,
                                  color: Colors.grey,
                                ),
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                  fontSize: 20.0,
                                ),
                              ),            
                              ),
                              const SizedBox(
                                height: 15.0,
                              ),
                              Center(
                                child: ElevatedButton(
                                  onPressed: (){
                                    widget.login(context);
                                  }, 
                                  child: Text(
                                    'LOGIN',
                                    style: GoogleFonts.raleway(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.yellow,
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
      ),
    );
  }
}