import 'package:flutter/material.dart';

Widget myText(String label, bool isObsecure) {
  return Container(
    margin: EdgeInsets.fromLTRB(45, 10, 45, 20),
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
