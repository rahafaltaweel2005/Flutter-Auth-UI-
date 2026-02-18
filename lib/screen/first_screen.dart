import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'register_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.6),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              children: [
                Text("Wellcome" ,
                style: TextStyle(fontSize: 40)),
                Image.network(
                  "https://i.pinimg.com/736x/c4/4b/8b/c44b8bb8fbbca915973360b6759264db.jpg",
                  fit: BoxFit.cover,
                ),
                SizedBox(height: height * 0.1),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Text("Login"),
                ),
                SizedBox(height: height * 0.01),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterScreen()));
                }, child: Text("Signin"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
