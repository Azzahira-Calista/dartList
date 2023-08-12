import 'package:flutter/material.dart';
import 'package:myapp/home.dart';
import 'package:myapp/view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Widget myText(String label, bool isObsecure) {
    return Container(
      margin: EdgeInsets.all(15),
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromARGB(225, 67, 67, 67),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          labelText: label,
          labelStyle: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Application"),
        backgroundColor: Color.fromARGB(255, 29, 29, 29),
        titleTextStyle: TextStyle(color: Colors.white),
      ),
      body: Container(
        color: Color.fromARGB(255, 15, 15, 15),
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            myText("username", false),
            myText("password", true),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 60,
                  width: 140,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 231, 2, 4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //       builder: (context) => const listPage()),
                      // );
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                  width: 140,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 231, 2, 4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
