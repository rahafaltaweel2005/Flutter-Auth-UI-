import 'package:flutter/material.dart';

import 'first_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("RegisterScreen"),
        backgroundColor: Colors.white70,
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
                    Text("Email"),
                    SizedBox(width: width * 0.06),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.7,
                          child: TextField(
                            controller: email,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              prefixIcon: Icon(Icons.email_outlined),
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
                              prefixIcon: Icon(Icons.password_outlined),
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
                    Text("Confirm"),
                    SizedBox(width: width * 0.02),
                    Column(
                      children: [
                        SizedBox(
                          width: width * 0.7,
                          child: TextField(
                            controller: confirmPassword,
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
                SizedBox(height: height * 0.01),
                ElevatedButton(onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
                }, child: Text("Back To Login"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
