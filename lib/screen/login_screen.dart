import 'package:assignment2/screen/myhome_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white70,
        title: Text('Login Screen'),
        actions: [Icon(Icons.language)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            height: height * 0.4,
            width: width * 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("UserName"),
                    SizedBox(width: width * 0.01),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.7,
                          child: TextField(
                            controller: userName,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Icon(Icons.perm_identity),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: height * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Password"),
                    SizedBox(width: width * 0.01),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.7,
                          child: TextField(
                            controller: password,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Icon(Icons.password),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyhomeScreen()));
                }, child: Text("Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
