import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/Widgets/customAppBar.dart';
import 'package:ui_challenge/Widgets/widgets.dart';
import 'package:ui_challenge/login_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Users{
  final String userEmail;

  const Users({required this.userEmail});

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      userEmail: json['email'],
    );
  }
}

Future<Users> fetchUser() async{
  var url = 'http://localhost:8080/localConnection/login.php';
  final response = await http.get(Uri.parse(url));

  if(jsonDecode(response.body) == 200){
    return Users.fromJson(jsonDecode(response.body));
  }
  else{
    throw Exception('Failed to fetch data');
  }
}

class CartPage extends StatefulWidget {
  const CartPage({ Key? key }) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  late Future<Users> fetchUserData;

  @override
  void initState() {
    super.initState();
    fetchUserData = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white70,
        appBar: const CustomAppBar('images/globalSkills.png', 'USER PROFILE'),
        bottomNavigationBar: const CustomNavBar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 50,
                  child: Image(
                    image: AssetImage('images/userImage.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'User Name: ',
                        style: GoogleFonts.raleway(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        child: FutureBuilder<Users>(
                          future: fetchUserData,
                          builder: (context, snapshot) {
                            if(snapshot.hasData){
                              return Text(snapshot.data!.userEmail);
                            }
                            else if(snapshot.hasError){
                              return Text('${snapshot.error}');
                            }
                            return const CircularProgressIndicator();
                          },
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
    );
  }
}